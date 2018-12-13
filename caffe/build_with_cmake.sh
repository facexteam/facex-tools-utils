#!/bin/bash

git clone https://github.com/NVIDIA/nccl.git && cd nccl && make -j install && cd .. 
# rm -rf nccl

mkdir build && cd build

# cmake -DUSE_CUDNN=1 -DUSE_OPENCV=1 -DUSE_NCCL=1 -DBLAS=open ..
cmake -DUSE_CUDNN=1 \
    -DUSE_OPENCV=1 \
    -DUSE_NCCL=1 \
    -DBLAS=open \
    ..
make -j
make install