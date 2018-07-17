#!/bin/bash

wget http://devtools.qiniu.com/qshell-v2.2.0.zip
unzip qshell-v2.2.0.zip -d qshell-v2.2.0
cp qshell-v2.2.0/qshell-linux-x64 /usr/bin/qshell

rm -rf qshell-v2.2.0*