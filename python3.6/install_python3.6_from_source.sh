#! /bin/bash
# from: http://devopspy.com/python/install-python-3-6-ubuntu-lts/

wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz
tar -xvf Python-3.6.3.tgz
cd Python-3.6.3
./configure --enable-optimizations
make -j8
make install
