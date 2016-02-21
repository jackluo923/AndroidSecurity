## How to run program 
1. Run main class in SampleDetector.java 
    - usage: SampleDetector <directory of extracted APK>
2. Collect output from /output.json

## Project Structure 
/AndroidApplications 
    - vulnerable android APK, decompressed APK, src
/lib 
    - vulnerability detector dependencies 
/preprocess 
    - some useful tools for preprocessing APK before doing analysis 
/src 
    - source files for vulnerability detector 
/tools 
    - WALA method signature tool (provided by Professor Lie) 
/vulnerabilities 
    - simple vulnerabilities apk containing only the vulnerabilities
build.gradle 
    - gradle script (use build.sh to build project) 
build.sh 
    - calls gradle and build project 
run.sh
    - runs project, first argument is the decompressed apk location


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





