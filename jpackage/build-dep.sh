echo "Building deb file from autoplot.jar"

wget -O input/autoplot.jar http://autoplot.org/jnlp/devel/autoplot.jar

/usr/local/jdk-17/bin/jpackage \
  --verbose \
  --input input/ \
  --name autoplot \
  --main-jar autoplot.jar \
  --type deb \
  --vendor "Cottage Systems" \
  --copyright "Copyright 2022 faden@cottagesystems.com" \
  --java-options '--enable-preview'
