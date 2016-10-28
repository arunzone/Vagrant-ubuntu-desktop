#!/bin/bash


# Check prerequisites
if [ ! -f /vagrant/id_rsa ];
then
    echo "SSH keys must alread by configured for GIT to work!"
    echo "Please place the keys(id_rsa) in current directory"
    exit 1
fi

source /vagrant/python.sh
source /vagrant/jdk.sh
source /vagrant/file_modification_limit.sh
source /vagrant/pcp_workaround.sh
