#!/bin/bash
USE_PYTHON3=true

TRT_PATH=''
if [[ $# gt 1 ]]; then
TRT_PATH=$1
fi

pip install 'pycuda>=2017.1.1'

# Install TensorRT from the Debian package.
# dpkg -i nv-tensorrt-repo-ubuntu1x04-cudax.x-trt5.x.x.x-rc-yyyymmdd_1-1_amd64.deb
# apt-key add /var/nv-tensorrt-repo-cudax.x-trt5.x.x.x-rc-yyyymmdd/7fa2af80.pub

dpkg -i $TRT_PATH
TRT_KEY=`ls /var/nv-tensorrt*/*.pub | grep 7fa2af80.pub`
apt-key add $TRT_KEY

# apt-get update
# apt-get install tensorrt

if [[ $USE_PYTHON3!=true ]]; then
# If using Python 2.7:
# apt-get install python-libnvinfer-dev
# The following additional packages will be installed:
#   python-libnvinfer

apt-get update

apt-get install tensorrt 
apt-get install python-libnvinfer-dev 
apt-get install uff-converter-tf

dpkg -l | grep TensorRT

# If using Python 3.x:
else
# apt-get install python3-libnvinfer-dev
# The following additional packages will be installed:
#   python3-libnvinfer

apt-get update

apt-get install tensorrt 
apt-get install python3-libnvinfer-dev 
apt-get install uff-converter-tf

dpkg -l | grep TensorRT

fi

# In either case:
# apt-get install uff-converter-tf
# The graphsurgeon-tf package will also be installed with the above command.

# Verify the installation.
# dpkg -l | grep TensorRT
# You should see something similar to the following:
# ii  graphsurgeon-tf	5.0.0-1+cuda10.0	amd64	GraphSurgeon for TensorRT package
# ii  libnvinfer-dev	5.0.0-1+cuda10.0	amd64	TensorRT development libraries and headers
# ii  libnvinfer-samples	5.0.0-1+cuda10.0	amd64	TensorRT samples and documentation
# ii  libnvinfer5	5.0.0-1+cuda10.0	amd64	TensorRT runtime libraries
# ii  python-libnvinfer	5.0.0-1+cuda10.0	amd64	Python bindings for TensorRT
# ii  python-libnvinfer-dev	5.0.0-1+cuda10.0	amd64	Python development package for TensorRT
# ii  python3-libnvinfer	5.0.0-1+cuda10.0	amd64	Python 3 bindings for TensorRT
# ii  python3-libnvinfer-dev	5.0.0-1+cuda10.0	amd64	Python 3 development package for TensorRT
# ii  tensorrt	5.0.0.10-1+cuda10.0	amd64	Meta package of TensorRT
# ii  uff-converter-tf	5.0.0-1+cuda10.0	amd64	UFF converter for TensorRT package

# App Server Installation: When setting up servers which will host TensorRT powered applications, you can simply install any of the following:
# the libnvinfer5 package (C++), or
# the python-libnvinfer package (Python 2.7), or
# the python3-libnvinfer package (Python 3.x).
# Issue the following commands if you want to run an application that was built with TensorRT using the Debian package, for example:

# dpkg -i nv-tensorrt-repo-ubuntu1x04-cudax.x-trt5.x.x.x-rc-yyyymmdd_1-1_amd64.deb
# apt-key add /var/nv-tensorrt-repo-cudax.x-trt5.x.x.x-rc-yyyymmdd/7fa2af80.pub

# apt-get update
# apt-get install libnvinfer5