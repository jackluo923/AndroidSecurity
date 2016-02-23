import com.ibm.wala.classLoader.JarFileModule;
import com.ibm.wala.classLoader.Module;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.cha.ClassHierarchy;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.util.config.AnalysisScopeReader;

import java.io.File;
import java.util.ArrayList;
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
        System.out.println("Working Directory = " +
                System.getProperty("user.dir"));
        String appDir = "Vulnerabilities/IntentSpoofing-APK/"; // default analysis application
        if (args.length == 0) {
            // do nothing, use default settings
        } else if (args.length == 1) {
            appDir = args[0];
            System.out.println("Analyzing application: "+ appDir);
        } else {
            System.err.println("usage: IntentSpoofingDetector <directory of extracted APK>");
            return;
        }
        System.out.println("Starting vulnerability detection for " + appDir);

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
            manifestPath = extractedApkPath + "/AndroidManifest.xml";
        } else {
            System.out.println("\nMissing AndroidManifest.xml and/or classes.jar files in target APK directory. Exiting");
            return;
        }

        // Load classes in WALA
        AnalysisScope appScope = AnalysisScopeReader.makeJavaBinaryAnalysisScope(appPath, null);
        Module androidMod = new JarFileModule(new JarFile(_androidLib));
        appScope.addToScope(ClassLoaderReference.Extension, androidMod);
        // System.out.println(appScope.toString());

        // Create class hierarchy
        IClassHierarchy appHierarchy =
                ClassHierarchy.make(appScope);

        vul = new Vulnerabilities();

        // Example (Overprivilege):
        List<Vulnerabilities.UnusedPermission> overprivilegeCases = new ArrayList<Vulnerabilities.UnusedPermission>();
        // Check for cases of overprivilege
        overprivilegeCases.add(new Vulnerabilities.UnusedPermission());
    }

    private void getComponents(AnalysisScope appScope) {
    }
}
