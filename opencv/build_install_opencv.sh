#!/bin/bash
BUILD_PATH=/opt/

# Required Packages
#     GCC 4.4.x or later
#     CMake 2.8.7 or higher
#     Git
#     GTK+2.x or higher, including headers (libgtk2.0-dev)
#     pkg-config
#     Python 2.6 or later and Numpy 1.5 or later with developer packages (python-dev, python-numpy)
#     ffmpeg or libav development packages: libavcodec-dev, libavformat-dev, libswscale-dev
#     [optional] libtbb2 libtbb-dev
#     [optional] libdc1394 2.x
#     [optional] libjpeg-dev, libpng-dev, libtiff-dev, libjasper-dev, libdc1394-22-dev
#     [optional] CUDA Toolkit 6.5 or higher
#     The packages can be installed using a terminal and the following commands or by using Synaptic Manager:

apt-get install build-essential #[compiler] 
apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev #[required] 
apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev #[optional] 

cd $BUILD_PATH
git clone --depth=1 https://github.com/opencv/opencv.git
git clone --depth=1 https://github.com/opencv/opencv_contrib.git

cd ./opencv
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..

make -j8 # runs 7 jobs in parallel

make install