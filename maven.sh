#!/bin/bash
MAVEN_PACKAGE=apache-maven-3.2.5-bin.tar.gz

sudo apt-get -y install maven2
#upgrade maven3 
pushd /tmp
wget https://archive.apache.org/dist/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz
popd

pushd /usr/local
sudo tar -xzf /tmp/$MAVEN_PACKAGE
popd

sudo mv /usr/bin/mvn /usr/bin/mvn2
sudo ln -s /usr/local/apache-maven-3.2.5/bin/mvn /usr/bin/mvn

echo "export M2_HOME=/usr/local/apache-maven-3.2.5" | tee -a ~/.profile
echo "export M2=\$M2_HOME/bin" | tee -a ~/.profile
echo "export MAVEN_OPTS=\"-Xms256m -Xmx1024m\"" | tee -a ~/.profile
echo "export PATH=\$M2:\$PATH" | tee -a ~/.profile
echo "export PATH=\$PATH:/usr/bin" | tee -a ~/.profile
source ~/.profile
