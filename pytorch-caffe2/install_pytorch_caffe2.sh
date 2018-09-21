#!/bin/bash

UBUNTU_VERSION=16.04
INSTALL_CUDA=false

# Install Dependencies
echo "===> Install Dependenciesd"

apt-get update

apt-get install -y --no-install-recommends \
      build-essential \
      cmake \
      git \
      libgoogle-glog-dev \
      libgtest-dev \
      libiomp-dev \
      libleveldb-dev \
      liblmdb-dev \
      libopencv-dev \
      libopenmpi-dev \
      libsnappy-dev \
      libprotobuf-dev \
      openmpi-bin \
      openmpi-doc \
      protobuf-compiler \
      python-dev \
      python-pip
      
pip install --user \
      future \
      numpy \
      protobuf

# for Ubuntu 14.04
if [[ $UBUNTU_VERSION == '14.04' ]]; then
    apt-get install -y --no-install-recommends libgflags2
# for Ubuntu 16.04
else
    apt-get install -y --no-install-recommends libgflags-dev
fi

# Install with GPU Support
if [[ $INSTALL_CUDA == 'true' ]]; then
    echo "===> Install with GPU Support"

    # for Ubuntu 14.04
    if [[ $UBUNTU_VERSION == '14.04' ]]; then
        wget "http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_8.0.61-1_amd64.deb"
        dpkg -i cuda-repo-ubuntu1404_8.0.61-1_amd64.deb
        # apt-get update
        apt-get install cuda    
    # for Ubuntu 16.04
    else
        wget "http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb"
        dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
        # apt-get update
        apt-get install cuda
    fi

# Install cuDNN (all Ubuntu versions)
    # echo "===> Install cuDNN"
# CUDNN_URL="http://developer.download.nvidia.com/compute/redist/cudnn/v5.1/cudnn-8.0-linux-x64-v5.1.tgz"
# wget ${CUDNN_URL}
# tar -xzf cudnn-8.0-linux-x64-v5.1.tgz -C /usr/local
# rm cudnn-8.0-linux-x64-v5.1.tgz && ldconfig

fi

# Clone & Build
echo "===> Clone & Build"
git clone --depth=1 https://github.com/pytorch/pytorch.git && cd pytorch
git submodule update --init --recursive
# install missing python packages
pip install pyyaml typing
python setup.py install

# Test the Caffe2 Installation
echo "===> Test the Caffe2 Installation"
python caffe2/python/operator_test/activation_ops_test.py


# Setting Up Tutorials & Jupyter Server
# jupyter notebook --no-browser --port=8889
# ssh -N -f -L localhost:8888:localhost:8889 -i "your-public-cert.pem" ubuntu@super-rad-GPU-instance.compute-1.amazonaws.com
