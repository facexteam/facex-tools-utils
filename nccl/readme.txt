#!/bin/bash

#--- 1) Get the src from git repo
git clone --depth=1 https://github.com/NVIDIA/nccl

#--- 2) Build
# To build the library :
cd nccl

#NCCL will be compiled and installed in build/ unless BUILDDIR is set.

#If CUDA is installed in the default /usr/local/cuda path, you can define the CUDA path with :
make -j src.build

#If CUDA is not installed in the default /usr/local/cuda path, you can define the CUDA path with :
# make src.build CUDA_HOME=<path to cuda install>

#By default, NCCL is compiled for all supported architectures. To accelerate the compilation and reduce the binary size, consider redefining NVCC_GENCODE (defined in makefiles/common.mk) to only include the architecture of the target platform :
# make -j src.build NVCC_GENCODE="-gencode=arch=compute_70,code=sm_70"

#--- 3) Install
# To install NCCL on the system, create a package then install it as root.

# Debian/Ubuntu :
make pkg.debian.build
ls build/pkg/deb/

# # RedHat/CentOS :
# make pkg.redhat.build
# ls build/pkg/rpm/

# # OS-agnostic tarball :
# make pkg.txz.build
# ls build/pkg/txz/

#--- 4) Tests
# Tests for NCCL are maintained separately at https://github.com/nvidia/nccl-tests.
# git clone https://github.com/NVIDIA/nccl-tests.git
# cd nccl-tests
# make
# ./build/allreduce_perf -b 8 -e 256M -f 2 -g <ngpus>

#--- 5) Delete Src code
# cd ..
# rm -rf nccl
