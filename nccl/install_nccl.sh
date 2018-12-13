#!/bin/bash

git clone --depth=1 https://github.com/NVIDIA/nccl

cd nccl

make -j src.build

make pkg.debian.build
ls build/pkg/deb/
