#!/bin/bash

#apt-get update

apt-get install -y -q zip
apt-get install -y -q aria2
apt-get install -y -q dos2unix

## install qrsctl
wget http://devtools.qiniu.com/linux/amd64/qrsctl-v3.2.20170501 -O qrsctl
mv qrsctl /usr/bin

## install qshell
wget http://devtools.qiniu.com/qshell-v2.2.0.zip
unzip qshell-v2.2.0.zip -d qshell-v2.2.0
cp qshell-v2.2.0/qshell-linux-x64 /usr/bin/qshell
rm -rf qshell-v2.2.0*