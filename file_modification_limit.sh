#!/bin/bash
echo "*  soft  nofile  4096" | sudo tee -a /etc/security/limits.conf
echo "*  hard  nofile  4096" | sudo tee -a /etc/security/limits.conf
sysctl -p
