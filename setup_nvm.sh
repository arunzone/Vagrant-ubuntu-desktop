#!/bin/bash

git apt-get install -y curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh |
bash
echo "source /home/vagrant/.nvm/nvm.sh" >> /home/vagrant/.profile
source /home/vagrant/.profile
nvm install 6.3.0
npm install -g grunt-cli gulp
echo "---node installed---"
