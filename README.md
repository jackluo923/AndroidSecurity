## How to run program 
1. Run main class in SampleDetector.java 
    - usage: SampleDetector <directory of extracted APK>
2. Collect output from /output.json

## Intellij Configuration
1. Mark src folder as src
2. Mark lib/wala folder as lib
3. Create Run/debug Configuration
4. Add Application</br>
-Name: Analysis</br>
-Main class: SampleDetector</br>
-Use classpath of module: AndroidSecurity</br>

## Gradle Configuration 
1. run build.sh 
2. run run.sh





