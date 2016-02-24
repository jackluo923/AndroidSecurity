/**
 * This is the main class project starter files.
 */


import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.ibm.wala.classLoader.*;
import com.ibm.wala.ipa.callgraph.*;
import com.ibm.wala.ipa.callgraph.impl.ClassHierarchyClassTargetSelector;
import com.ibm.wala.ipa.callgraph.impl.ClassHierarchyMethodTargetSelector;
import com.ibm.wala.ipa.callgraph.impl.DefaultContextSelector;
import com.ibm.wala.ipa.callgraph.impl.DefaultEntrypoint;
import com.ibm.wala.ipa.callgraph.propagation.SSAPropagationCallGraphBuilder;
import com.ibm.wala.ipa.callgraph.propagation.cfa.ZeroXCFABuilder;
import com.ibm.wala.ipa.callgraph.propagation.cfa.ZeroXInstanceKeys;
import com.ibm.wala.ipa.cha.ClassHierarchy;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.types.Selector;
import com.ibm.wala.types.TypeReference;
import com.ibm.wala.util.config.AnalysisScopeReader;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.*;
import java.util.*;
import java.util.jar.JarFile;

public class OverprivilegeDetector {
    private final String _androidLib = "lib/android.jar";
    private String _appDir = null;

    private final String[] activityLifecycleMethods = {
            "onCreate(Landroid/os/Bundle;)V",
            "onStart()V",
            "onResume()V",
            "onPause()V",
            "onStop()V",
            "onRestart()V",
            "onDestroy()V"
    };

    public class permission {
        private String permissionString = "";
        public permission(String _permissionString ) {
            permissionString = _permissionString;
        }
        public String getPermissionAsString() {
            return permissionString;
        }
        public void print() {
            System.out.println("android:name : " + permissionString);
        }
        @Override
        public boolean equals(Object obj) {
            if (obj instanceof permission) {
                permission ptr = (permission) obj;
                return (this.getPermissionAsString().equals(ptr.getPermissionAsString()));
            }
            return false;
        }

        @Override
        public int hashCode() {
            final int prime = 31;
            int result = 1;
            result = prime * result + (permissionString == null ? 0 : permissionString.hashCode());
            return result;
        }
    }

    public class APIMapForAPermission {
        private permission mappedPermission = new permission("");
        private List<String> mappedAPISignatures = new ArrayList<String>();
        public APIMapForAPermission(permission newPermission) {
            mappedPermission = newPermission;
        }
        public void addAPISignatureToMap(String newAPISignature) {
            mappedAPISignatures.add(newAPISignature);
        }
        public int getAPIMapSize() {
            return mappedAPISignatures.size();
        }
        public void prettyPrint() {
            if (mappedPermission != null) {
                mappedPermission.print();
                for (String APISignature : mappedAPISignatures) {
                    System.out.println("    " + APISignature);
                }
            }
        }
        public boolean containsAPISignature(String signature) {
            return mappedAPISignatures.contains(signature);
        }
    }

    /*
     * This program accepts one argument:  the directory in which the APK file was 
     * extracted.  If you have an APK file for an app that you wish to analyze, use
     * the preprocessing scripts first to create the "appDir" that the following code
     * expects.
     */
    public static void main(String[] args) throws Exception {

        String appDir = "AndroidApplications/com.zeptolab.ctr.ads-912244"; // default analysis application
        //appDir = "AndroidApplications/Vulnerabilities/SSL";

        if (args.length == 0) {
            // do nothing, use default settings
        } else if (args.length == 1) {
            appDir = args[0];
            System.out.println("Analyzing application: "+ appDir);
        } else {
            System.err.println("usage: OverprivilegeDetector <directory of extracted APK>");
            return;
        }
        System.out.println("Starting vulnerability detection for " + appDir);

        OverprivilegeDetector analysis = new OverprivilegeDetector(appDir);
        analysis.analyze();
    }

    public OverprivilegeDetector(String appDir) {
        _appDir = appDir;
    }

    public void analyze() throws Exception {
        String appPath = null;
        String manifestPath = null;
        String pscoutPermissionMapDir = "tools/pscout_out";

        // Get class files and manifest from APK directory
        String extractedApkPath = _appDir + "/apk";
        File extractedApkDir = new File(extractedApkPath);

        if (extractedApkDir.isDirectory()) {
            appPath = extractedApkPath + "/classes.jar";
            manifestPath = extractedApkPath + "/AndroidManifest.xml";
        } else {
            System.out.println("\nMissing AndroidManifest.xml and/or classes.jar files in target APK directory.");
            return;
        }

        // Parse manifest file to obtain requested permissions
        List<permission> requestedPermissionList = new ArrayList<permission>();
        parseManifestRequestedPermission(manifestPath, requestedPermissionList);
        printPermission(requestedPermissionList);
        System.out.println("======================");


        // Parse PScout permission map
        HashMap<permission, APIMapForAPermission> permissionMapForRequestedPermissions =
                populatePermissionMapForRequestedPermissions(pscoutPermissionMapDir, requestedPermissionList);

        //printMap(permissionMapForRequestedPermissions);

        // Test for a permission map
//        permission testPermission = new permission("android.permission.SET_WALLPAPER");
//        APIMapForAPermission result = null;
//        if ((result = permissionMapForRequestedPermissions.get(testPermission)) != null) {
//            result.prettyPrint();
//            System.out.println(result.getAPIMapSize());
//        }

        // Load classes in WALA
        AnalysisScope appScope = AnalysisScopeReader.makeJavaBinaryAnalysisScope(appPath, null);
        Module androidMod = new JarFileModule(new JarFile(_androidLib));
        appScope.addToScope(ClassLoaderReference.Extension, androidMod);

        // Create class hierarchy
        IClassHierarchy appHierarchy = ClassHierarchy.make(appScope);
//        System.out.println("Class Hierarchy");
//        System.out.println("---------------");
//        printClassHierarchy(appHierarchy, appHierarchy.getRootClass(), 0);
//        System.out.println("======================");

        // Create call graph
        List<Entrypoint> appEntrypoints = getAppEntrypoints(appHierarchy);
        CallGraph appCallGraph = makeZeroCFACallgraph(appEntrypoints, appScope, appHierarchy);
//        System.out.println("Call Graph");
//        System.out.println("----------");
//        printCallGraph(appCallGraph, appCallGraph.getFakeRootNode(), 0);
//        System.out.println("======================");

        // Collect function called by the app
        List<String> appCallSignatures = new ArrayList<String>();
        collectAppCalls(appCallGraph, appCallGraph.getFakeRootNode(), 0, appCallSignatures);
        System.out.println(appCallSignatures.size());

        // Store all detect vulnerabilities in here.  Add more fields to the 
        // Vulnerabilities class if there are extra vulnerabilities (or extra details
        // about a particular vulnerability) that you can detect.
        Vulnerabilities vulnerabilities = new Vulnerabilities();

        // Check for cases of overprivilege
        List<Vulnerabilities.UnusedPermission> overprivilegeCases =
                determineUnusedPermission(
                        appCallSignatures,
                permissionMapForRequestedPermissions);

        vulnerabilities.Overprivilege = overprivilegeCases;

        // Handle other vulnerabilities
        // ...

        // Print vulnerabilities to output file
        printVulnerabilityOutput(vulnerabilities);
    }

    private List<Vulnerabilities.UnusedPermission> determineUnusedPermission(
            List<String> appCallSignatures,
            HashMap<permission, APIMapForAPermission> permissionMapForRequestedPermissions) {

        List<Vulnerabilities.UnusedPermission> overprivilegeCases = new ArrayList<Vulnerabilities.UnusedPermission>();

        // Populate the list with all the requested permissions
        Iterator it = permissionMapForRequestedPermissions.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry pair = (Map.Entry)it.next();
            Vulnerabilities.UnusedPermission aUnusedPermission = new Vulnerabilities.UnusedPermission();
            aUnusedPermission.permission = ((permission)pair.getKey()).getPermissionAsString();
            overprivilegeCases.add(aUnusedPermission);
        }

        // Remove used permissions from the list
        for (String signature : appCallSignatures) {
            Iterator iter = permissionMapForRequestedPermissions.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry pair = (Map.Entry)iter.next();
                if (((APIMapForAPermission)pair.getValue()).containsAPISignature(signature)) {
                    System.out.println("Used Permission: " + ((permission)pair.getKey()).getPermissionAsString());
                    Vulnerabilities.UnusedPermission aUnusedPermission = new Vulnerabilities.UnusedPermission();
                    aUnusedPermission.permission = ((permission)pair.getKey()).getPermissionAsString();
                    overprivilegeCases.remove(aUnusedPermission);
                }
            }
        }

        return overprivilegeCases;
    }

    private Document parseManifest(String manifestPath) {
        try {
            File manifestFile = new File(manifestPath);
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(manifestFile);
            doc.getDocumentElement().normalize();
            return doc;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void parseManifestRequestedPermission(String manifestPath, List<permission> requestedPermissionList) {
        Document manifestDoc = parseManifest(manifestPath);
        if (manifestDoc != null) {
            //System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
            NodeList nList = manifestDoc.getElementsByTagName("uses-permission");
            for (int index = 0; index < nList.getLength(); index++) {
                Node nNode = nList.item(index);
                //System.out.println("\nCurrent Element :" + nNode.getNodeName());
                if (nNode.getNodeType() == Node.ELEMENT_NODE) {
                    Element eElement = (Element) nNode;
                    requestedPermissionList.add(new permission(eElement.getAttribute("android:name")));
                }
            }
        }
    }

    private void printPermission(List<permission>requestedPermissionList) {
        for (permission permissionItem : requestedPermissionList) {
            permissionItem.print();
        }
    }

    private void printMap(Map mp) {
        Iterator it = mp.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry pair = (Map.Entry)it.next();
            ((permission)pair.getKey()).print();
            ((APIMapForAPermission)pair.getValue()).prettyPrint();
            it.remove(); // avoids a ConcurrentModificationException
        }
    }

    private HashMap<permission, APIMapForAPermission> populatePermissionMapForRequestedPermissions(
            String pscoutPermissionMapDir,
            List<permission> requestedPermissionList) {
        HashMap<permission, APIMapForAPermission> finalMap = new HashMap<permission, APIMapForAPermission>();
        File mapFile = new File(pscoutPermissionMapDir);
        BufferedReader reader = null;

        permission currentPermission = null;
        APIMapForAPermission currentAPIMap = null;

        try {
            reader = new BufferedReader(new FileReader(mapFile));
            String text = null;

            while ((text = reader.readLine()) != null) {
                // New permission
                if (text.contains("Permission:")) {
                    String permissionName = text.replace("Permission:", "");
                    permission newPermission = new permission(permissionName);
                    if (requestedPermissionList.contains(newPermission)) {

                        currentPermission = newPermission;
                        APIMapForAPermission newAPIMap = new APIMapForAPermission(newPermission);
                        currentAPIMap = newAPIMap;
                        finalMap.put(newPermission, newAPIMap);
                    } else { // ignore permission and APIs that are not in requestedPermissionList
                        //System.out.print("Ignored permission: ");
                        //newPermission.print();
                        currentPermission = null;
                        currentAPIMap = null;
                    }
                } else if (text.contains("Callers:"))  {
                    // Ignore the number of Callers for now
                } else if (text.isEmpty()) {
                    // Ignore emtpy lines
                }
                else { // APIs
                    if (currentPermission != null && currentAPIMap != null) {
                        //currentPermission.print();
                        finalMap.get(currentPermission).addAPISignatureToMap(text);
                    }
                }
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
            } catch (IOException e) {
            }
        }
        return finalMap;
    }

    private void printClassHierarchy(IClassHierarchy cha, IClass currentClass, int level) {
        String indent = "";
        for (int i = 0; i < level; i++) {
            indent += "    ";
        }

        if (currentClass.getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
            System.out.println(indent + currentClass.getName().toString());
        }

        for (IClass subclass : cha.getImmediateSubclasses(currentClass)) {
            if (subclass.getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
                printClassHierarchy(cha, subclass, level + 1);
            } else {
                printClassHierarchy(cha, subclass, level);
            }
        }
    }

    private List<Entrypoint> getAppEntrypoints(IClassHierarchy cha) {
        List<Entrypoint> entrypoints = new ArrayList<Entrypoint>();

        // For now, just get lifecycle handlers
        IClass activityClass = cha.lookupClass(TypeReference.findOrCreate(ClassLoaderReference.Extension, "Landroid/app/Activity"));

        for (IClass activitySubclass : cha.computeSubClasses(activityClass.getReference())) {
            if (!activitySubclass.getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
                continue;
            }

            Collection<IMethod> declaredMethods = activitySubclass.getDeclaredMethods();

            for (String lifecycle : activityLifecycleMethods) {
                IMethod lifecycleMethod = cha.resolveMethod(activitySubclass, Selector.make(lifecycle));

                if (declaredMethods.contains(lifecycleMethod)) {
                    entrypoints.add(new DefaultEntrypoint(lifecycleMethod, cha));
                }
            }
        }

        return entrypoints;
    }

    private CallGraph makeZeroCFACallgraph(Iterable<Entrypoint> entrypoints, AnalysisScope scope, IClassHierarchy cha) {
        try {
            AnalysisOptions options = new AnalysisOptions(scope, entrypoints);
            options.setSelector(new ClassHierarchyMethodTargetSelector(cha));
            options.setSelector(new ClassHierarchyClassTargetSelector(cha));

            SSAPropagationCallGraphBuilder builder = ZeroXCFABuilder.make(cha, options, new AnalysisCache(), new DefaultContextSelector(options, cha), null, ZeroXInstanceKeys.NONE);

            CallGraph cg = builder.makeCallGraph(options, null);
            return cg;

        } catch (Exception e) {
            System.out.println("Error: " + e.toString());
            return null;
        }
    }

    private boolean isAndroidAPI(String signature) {
        if (signature.startsWith("com.android.") ||
                signature.startsWith("android.") ||
                signature.startsWith("com.google.android.") ||
                signature.startsWith("java.net.") ||
                signature.startsWith("com.google.common.") ||
                signature.startsWith("org.apache.http."))
            return true;
        return false;
    }

    private void collectAppCalls(CallGraph cg, CGNode currentNode, int level, List<String>appCallSignatures) {

        if (isAndroidAPI(currentNode.getMethod().getSignature()))
            appCallSignatures.add(currentNode.getMethod().getSignature());

        IClassHierarchy cha = cg.getClassHierarchy();
        Iterator<CallSiteReference> callsiteIter = currentNode.iterateCallSites();


        while (callsiteIter.hasNext()) {
            CallSiteReference callsite = callsiteIter.next();

            while (!(callsite.getClass().toString().contains("android") ||
                    callsite.getClass().toString().contains("com.google.common") ||
                    callsite.getClass().toString().contains("org.apache.http") ) &&
                    callsiteIter.hasNext()){
                callsiteIter.next();
            }

            IMethod calledMethod = cha.resolveMethod(callsite.getDeclaredTarget());

            if (cg.getPossibleTargets(currentNode, callsite).isEmpty()) {
                if (isAndroidAPI(callsite.getDeclaredTarget().getSignature()))
                    appCallSignatures.add(callsite.getDeclaredTarget().getSignature());
            } else {
                for (CGNode targetNode : cg.getPossibleTargets(currentNode, callsite)) {
                    if (targetNode.getMethod().getDeclaringClass().getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
                        collectAppCalls(cg, targetNode, level + 1, appCallSignatures);
                    } else {
                        if (isAndroidAPI(targetNode.getMethod().getSignature()))
                            appCallSignatures.add(targetNode.getMethod().getSignature());
                    }
                }
            }
        }
    }

    private void printCallGraph(CallGraph cg, CGNode currentNode, int level) {
        String indent = "";
        for (int i = 0; i < level; i++) {
            indent += "    ";
        }

        System.out.println(indent + currentNode.getMethod().getSignature());

        IClassHierarchy cha = cg.getClassHierarchy();
        Iterator<CallSiteReference> callsiteIter = currentNode.iterateCallSites();

        while (callsiteIter.hasNext()) {
            CallSiteReference callsite = callsiteIter.next();
            IMethod calledMethod = cha.resolveMethod(callsite.getDeclaredTarget());

            if (cg.getPossibleTargets(currentNode, callsite).isEmpty()) {
               System.out.println(indent + "    " + callsite.getDeclaredTarget().getSignature());
            } else {
                for (CGNode targetNode : cg.getPossibleTargets(currentNode, callsite)) {
                    if (targetNode.getMethod().getDeclaringClass().getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
                        printCallGraph(cg, targetNode, level + 1);
                    } else {
                        System.out.println(indent + "    " + targetNode.getMethod().getSignature());
                    }
                }
            }
        }
    }

    /*
     * This method prints your output.  You should not need to modify this.
     */
    private void printVulnerabilityOutput(Vulnerabilities vulnerabilities) throws Exception {
        // Do not change the file name for the output file
        PrintWriter writer = new PrintWriter("./output.json");

        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        gson.toJson(vulnerabilities, writer);

        writer.close();
    }

    /* 
     * Helper method in case you need to convert component names into type references that 
     * WALA can understand
     */
    private String convertClassNameToWALA(String className) {
        String walaName = "L" + className.replace('.', '/');
        return walaName;
    }
}

