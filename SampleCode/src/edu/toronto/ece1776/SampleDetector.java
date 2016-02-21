package edu.toronto.ece1776;

import com.ibm.wala.classLoader.*;
import com.ibm.wala.types.*;
import com.ibm.wala.ipa.cha.*;
import com.ibm.wala.ipa.callgraph.*;
import com.ibm.wala.util.config.AnalysisScopeReader;

import java.util.*;
import java.util.jar.JarFile;
import java.io.PrintWriter;
import java.io.File;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class SampleDetector {
    private final String _androidLib = "<path to android.jar>";
    private String _appDir = null;

    /*
     * This program accepts one argument:  the directory in which the APK file was 
     * extracted.  If you have an APK file for an app that you wish to analyze, use
     * the preprocessing scripts first to create the "appDir" that the following code
     * expects.
     */
    public static void main(String[] args) throws Exception {
        if (args.length != 1) {
            System.err.println("usage: SampleDetector <directory of extracted APK>");
            return;
        }

        String appDir = args[0];
        System.out.println("Starting vulnerability detection for " + appDir);

        SampleDetector analysis = new SampleDetector(appDir);
        analysis.analyze();
    }

    public SampleDetector(String appDir) {
        _appDir = appDir;
    }

    public void analyze() throws Exception {
        String appPath = null;
        String manifestPath = null;

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

        // Load classes in WALA
        AnalysisScope appScope = AnalysisScopeReader.makeJavaBinaryAnalysisScope(appPath, null);
        Module androidMod = new JarFileModule(new JarFile(_androidLib));
        appScope.addToScope(ClassLoaderReference.Extension, androidMod);

        // Create class hierarchy
        IClassHierarchy appHierarchy = ClassHierarchy.make(appScope);

        // Create call graph, etc.
        // ...

        // Store all detect vulnerabilities in here.  Add more fields to the 
        // Vulnerabilities class if there are extra vulnerabilities (or extra details
        // about a particular vulnerability) that you can detect.
        Vulnerabilities vulnerabilities = new Vulnerabilities();

        // Example (Overprivilege):
        List<Vulnerabilities.UnusedPermission> overprivilegeCases = new ArrayList<Vulnerabilities.UnusedPermission>();
        // Check for cases of overprivilege
        overprivilegeCases.add(new Vulnerabilities.UnusedPermission());
        vulnerabilities.Overprivilege = overprivilegeCases;

        // Handle other vulnerabilities
        // ...

        // Print vulnerabilities to output file
        printVulnerabilityOutput(vulnerabilities);
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

