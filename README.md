## How to run program 
1. Run main class in VulnerabilityDetector.java 
    - usage: VulnerabilityDetector <directory of extracted APK>
2. Collect output from /output.json

## Project Structure 
/AndroidApplications </br>
    - vulnerable android APK, decompressed APK, src </br>
/lib </br>
    - vulnerability detector dependencies </br>
/preprocess </br>
    - some useful tools for preprocessing APK before doing analysis </br>
/src </br>
    - source files for vulnerability detector </br>
/tools </br>
    - WALA method signature tool (provided by Professor Lie) </br>
/vulnerabilities </br>
    - simple vulnerabilities apk containing only the vulnerabilities </br>
build.gradle </br>
    - gradle script (use build.sh to build project) </br>
build.sh </br>
    - calls gradle and build project </br>
run.sh </br>
    - runs project, first argument is the decompressed apk location </br>


## Intellij Configuration
1. Mark src folder as src
2. Mark lib/wala folder as lib
3. Create Run/debug Configuration
4. Add Application</br>
-Name: VulnerabilityDetector</br>
-Main class: VulnerabilityDetector</br>
-Use classpath of module: AndroidSecurity</br>

## Gradle Configuration 
1. run build.sh 
2. run run.sh





