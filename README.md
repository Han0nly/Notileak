Our analysis is mainly built on top of Flowdroid and MobSF. 

# Outline

We changed the `SourcesAndSinks.txt` file of Flowdroid to detect privacy leakage and the `privacy_apis.yaml` to detect the usage of notification platforms and sensitive APIs.

# Setup
In the top directory,

```bash
# Install MobSF
cd MobSF
./setup.sh
```

# Run

```bash
# Flowdroid
java -jar FlowDroid/soot-infoflow-cmd-2.9.0-jar-with-dependencies.jar \
    -a <APK File> \
    -p <Android JAR folder> \
    -s ./SourcesAndSinks.txt
```
