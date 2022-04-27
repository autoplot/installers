#/Library/Java/JavaVirtualMachines/jdk-15.0.2.jdk/Contents/Home/bin/jpackage --help
echo "Building mac dmg file from autoplot.jar"
mkdir -p input
curl http://autoplot.org/latest/autoplot.jar > input/autoplot.jar
#/Library/Java/JavaVirtualMachines/adoptopenjdk-16.jdk/Contents/Home/bin/jpackage \
/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/bin/jpackage \
  --verbose \
  --input input \
  --name Autoplot \
  --main-jar autoplot.jar \
  --type dmg \
  --icon "autoplot2017.icns" \
  --app-version "2022.3" \
  --vendor "Cottage Systems" \
  --copyright "Copyright 2022 Jeremy Faden" \
  --java-options '--enable-preview' \
  --mac-sign \
  --mac-bundle-identifier "com.cottagesystems.autoplot" \
  --mac-bundle-name "Autoplot" \
  --mac-bundle-signing-prefix "" \
  --mac-signing-key-user-name "Apple Development: Jeremy Faden (27P7JYS46W)" 
