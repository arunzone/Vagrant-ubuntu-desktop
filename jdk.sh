#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update 

echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get -y install --assume-yes oracle-java7-installer

