#!/bin/bash


# Check prerequisites
if [ ! -f /vagrant/id_rsa ];
then
    echo "SSH keys must alread by configured for GIT to work!"
    echo "Please place the keys in ~/.ssh"
    exit 1
fi

source /vagrant/python.sh
source /vagrant/jdk.sh
