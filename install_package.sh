#!/bin/bash

<<info 
This script will install the packages that you pass in the arguments
eg. .install_packages.sh nginx ,doccker.io, unzip
info
echo "Installig $@"

sudo apt-get update -y > /dev/null
sudo apt-get upgrade -y > /dev/null
sudo apt-get install $@ -y 
echo "Installion completed"
