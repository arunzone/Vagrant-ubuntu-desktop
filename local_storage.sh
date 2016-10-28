#!/bin/bash
mkdir -p ~/tmp/mel/filestore
mkdir -p ~/tmp/aconex/nas/mel/
mkdir -p ~/tmp/aconex/index
mkdir -p ~/tmp/aconex/babylon_ext/jVue
echo "permanentLocation=$HOME/tmp/mel/filestore" | tee -a ~/tmp/aconex/nas/mel/filestore-config.properties
echo "unpromotedLocation=$HOME/tmp/mel/filestore/unpromoted" | tee -a ~/tmp/aconex/nas/mel/filestore-config.properties
echo "filesystemType=local" | tee -a ~/tmp/aconex/nas/mel/filestore-config.properties
