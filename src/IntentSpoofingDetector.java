import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.classLoader.JarFileModule;
import com.ibm.wala.classLoader.Module;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.cha.ClassHierarchy;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.util.config.AnalysisScopeReader;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.jar.JarFile;

/**
 * Author: Xu Zhao
 * */

// 1. Detect exported Broadcast Receivers registered to receive Intents with
//    System actions
// 2.
public class IntentSpoofingDetector {
    private final String _androidLib = "lib/android.jar";
    private String _appDir = null;
    private Vulnerabilities vul;

    /*
     * This program accepts one argument:  the directory in which the APK file was
     * extracted.  If you have an APK file for an app that you wish to analyze, use
     * the preprocessing scripts first to create the "appDir" that the following code
     * expects.
     */
    public static void main(String[] args) throws Exception {
        java.lang.System.out.println("Working Directory = " +
                java.lang.System.getProperty("user.dir"));
        String appDir = "Vulnerabilities/IntentSpoofing-APK/"; // default analysis application
        if (args.length == 0) {
            // do nothing, use default settings
        } else if (args.length == 1) {
            appDir = args[0];
            java.lang.System.out.println("Analyzing application: "+ appDir);
        } else {
            java.lang.System.err.println("usage: IntentSpoofingDetector <directory of extracted APK>");
            return;
        }
        java.lang.System.out.println("Starting vulnerability detection for " + appDir);

        IntentSpoofingDetector analysis = new IntentSpoofingDetector(appDir);
        analysis.analyze();
    }

    public IntentSpoofingDetector(String appDir) {
        _appDir = appDir;
    }

    public void analyze() throws Exception {
        String appPath = null;
        String manifestPath = null;

        // Get class files and manifest from APK directory
        String extractedApkPath = _appDir;
        File extractedApkDir = new File(extractedApkPath);

        if (extractedApkDir.isDirectory()) {
            appPath = extractedApkPath + "/classes.jar";
            manifestPath = extractedApkPath + "/AndroidManifest.2.xml";
        } else {
            java.lang.System.out.println("\nMissing AndroidManifest.xml and/or classes.jar files in target APK directory. Exiting");
            return;
        }

        // Load classes in WALA
        AnalysisScope appScope = AnalysisScopeReader.makeJavaBinaryAnalysisScope(appPath, null);
        Module androidMod = new JarFileModule(new JarFile(_androidLib));
        appScope.addToScope(ClassLoaderReference.Extension, androidMod);
        // System.out.println(appScope.toString());

        vul = new Vulnerabilities();
        intentSpoofAnalysis(vul, appScope, manifestPath);
    }

    private void intentSpoofAnalysis(Vulnerabilities vul, AnalysisScope appScope, String manifestPath) throws Exception {
        ManifestModel model = new ManifestModel(manifestPath);
        IClassHierarchy appHierarchy = ClassHierarchy.make(appScope);
        Iterator<IClass> it =appHierarchy.iterator();
        while(it.hasNext()) {
            IClass c = it.next();
            if (isApplicationClass(c)) {
                int index = vulnerableComponentCheck(model, c);
                if(index != -1) {
                    model.components.get(index).c = c;
                    model.components.get(index).extraData = extraDataCheck(c);
                }
            }
        }
        // TODO: Add dynamically added IntentSpoofing Receivers
        vul.IntentSpoofing = new ArrayList<>();
        for(int i = 0; i < model.components.size(); i ++) {
            Vulnerabilities.SpoofedComponent spc = new Vulnerabilities.SpoofedComponent();
            spc.component = model.components.get(i).name;
            spc.type = model.components.get(i).type;
            if(model.components.get(i).extraData) {
                spc.withData = "true";
            } else {
                spc.withData = "false";
            }
            vul.IntentSpoofing.add(spc);
        }
    }
    private static boolean isApplicationClass (IClass c) {
        // only preserve application classes
        if(c.getClassLoader().getReference().equals(ClassLoaderReference.Application)) {
            return true;
        } else {
            return false;
        }
    }
    private static boolean isBroadcastReceiver (IClass c) {
        IClass superClass = c.getSuperclass();
        while(true) {
            if(superClass.getClassLoader().toString().equals("Extension")) {
                if(superClass.getName().getClassName().toString().contains("BroadcastReceiver")) {
                    return true;
                } else {
                    return false;
                }
            } else {
                if(!superClass.getClassLoader().getReference().toString().equals("Application")) {
                    return false;
                } else {
                    superClass = superClass.getSuperclass();
                }
            }
        }
    }

    public class ManifestModel {
        private Component parseNode(String type, Node nl) {
            Component com = new Component();
            com.type = type;
            Node act = nl;
            if(act.getNodeType() == Node.ELEMENT_NODE) {
                Element e = (Element) act;
                com.name = e.getAttribute("android:name");
                if(e.getAttribute("android:permission") == null) {
                    com.permission = this.defaultPermission;
                } else {
                    com.permission = e.getAttribute("android:permission");
                }
                NodeList intentFilters = e.getElementsByTagName("intent-filter");
                com.intentFilter = new ArrayList<>();
                for(int j = 0; j < intentFilters.getLength(); j ++) {
                    IntentFilter ifilter = new IntentFilter();
                    Element ife = (Element)intentFilters.item(j);
                    if(ife.getElementsByTagName("action").getLength() > 0) {
                        ifilter.action = ((Element)ife.getElementsByTagName("action").item(0)).getAttribute("android:name");
                    }
                    if(ife.getElementsByTagName("category").getLength() > 0) {
                        ifilter.category = ((Element)ife.getElementsByTagName("category").item(0)).getAttribute("android:name");
                    }
                    if(ife.getElementsByTagName("data").getLength() > 0) {
                        ifilter.data = ((Element)ife.getElementsByTagName("data").item(0)).getAttribute("android:name");
                    }
                    com.intentFilter.add(ifilter);
                }
            }
            // check if weak permission or with IntentFilter, then this is vulnerable component
            if(com.permission.contains("DANGEROUS") || com.permission.contains("WEAK")) {
                return com;
            } else if (com.intentFilter.size() != 0) {
                return com;
            }
            return null;
        }
        public ManifestModel(String manifestPath) throws ParserConfigurationException, IOException, SAXException {
            DocumentBuilderFactory factory =
                    DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            ByteArrayInputStream input = new ByteArrayInputStream(Files.readAllBytes(Paths.get(manifestPath)));
            Document doc = builder.parse(input);
            Element root = doc.getDocumentElement();
            NodeList rootList = root.getChildNodes();
            for(int i = 0; i < rootList.getLength(); i ++) {
                if(rootList.item(i).getNodeName() == "permission") {
                    this.defaultPermission = ((Element)rootList.item(i)).getAttribute("android:name");
                    this.defaultProtectionLevel = ((Element)rootList.item(i)).getAttribute("android:protectionLevel");
                }
            }
            NodeList activities = root.getElementsByTagName("activity");
            this.components = new ArrayList<>();
            for(int i = 0; i < activities.getLength(); i ++) {
                Component com = this.parseNode("Activity", activities.item(i));
                if (com != null) {
                    this.components.add(com);
                }
            }
            NodeList recs = root.getElementsByTagName("receiver");
            for(int i = 0; i < recs.getLength(); i ++) {
                Component com = this.parseNode("Receiver", recs.item(i));
                if (com != null) {
                    this.components.add(com);
                }
            }
            NodeList services = root.getElementsByTagName("service");
            for(int i = 0; i < services.getLength(); i ++) {
                Component com = this.parseNode("Service", services.item(i));
                if (com != null) {
                    this.components.add(com);
                }
            }
        }
        public String defaultPermission;
        public String defaultProtectionLevel;
        public List<Component> components;
        public class Component {
            public IClass c;
            String type;
            String name;
            String permission;
            List<IntentFilter> intentFilter;
            boolean extraData;
        }
    }
    public class IntentFilter {
        String action;
        String data;
        String category;
        String extradata;
    }

    private static int vulnerableComponentCheck(ManifestModel model, IClass c) throws
            ParserConfigurationException, IOException, SAXException {
        String name = (c.getName().getPackage().toString() + "/" + c.getName().getClassName().toString()).replaceAll("/", ".");
        for(int i = 0; i < model.components.size(); i ++) {
            if (model.components.get(i).name.equals(name)) {
                return i;
            }
        }
        return -1;
    }

    private static boolean extraDataCheck(IClass c) {
        // third check if component receives an intent and only reads action, categories, component and packagename
        // if so no extra data, else extra data
        // done.
        // Step 1: get all methods in c
        // Step 2: for each methods in c,
        // check if it ever calls methods other than:
        // Intent.getAction()
        // Intent.getCategories()
        // Intent.getComponent()
        // Intent.getPackage()
        Collection<IMethod> methods = c.getAllMethods();
        Iterator<IMethod> it = methods.iterator();
        while(it.hasNext()) {
            IMethod m = it.next();

        }
        return true;
    }
}
