#!/bin/bash
#install or upgrade docker
#https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)

# Installation (version 2.0)
# Felix Abecassis edited this page on Dec 1, 2017 · 5 revisions
# Prerequisites
# The list of prerequisites for running nvidia-docker 2.0 is described below.
# For information on how to install Docker for your Linux distribution, please refer to the Docker documentation.

# GNU/Linux x86_64 with kernel version > 3.10
# Docker >= 1.12
# NVIDIA GPU with Architecture > Fermi (2.1)
# NVIDIA drivers ~= 361.93 (untested on older versions)
# Your driver version might limit your CUDA capabilities (see CUDA requirements)

# Removing nvidia-docker 1.0
# Version 1.0 of the nvidia-docker package must be cleanly removed before continuing.
# You must stop and remove all containers started with nvidia-docker 1.0.

# Ubuntu distributions
docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f
apt-get purge nvidia-docker
# CentOS distributions
# docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f
# yum remove nvidia-docker
# Installing version 2.0
# Make sure you have installed the NVIDIA driver and a supported version of Docker for your distribution (see prerequisites).

# If you have a custom /etc/docker/daemon.json, the nvidia-docker2 package might override it.

# Ubuntu distributions
# Install the repository for your distribution by following the instructions here.
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
  apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
  tee /etc/apt/sources.list.d/nvidia-docker.list
apt-get update

# Install the nvidia-docker2 package and reload the Docker daemon configuration:
apt-get install nvidia-docker2
pkill -SIGHUP dockerd
# CentOS distributions
# Install the repository for your distribution by following the instructions here.
# Install the nvidia-docker2 package and reload the Docker daemon configuration:
# yum install nvidia-docker2
# pkill -SIGHUP dockerd
# Older versions of Docker
# You must pin the versions of both nvidia-docker2 and nvidia-container-runtime when installing, for instance:

# apt-get install -y nvidia-docker2=2.0.1+docker1.12.6-1 nvidia-container-runtime=1.1.0+docker1.12.6-1
# Use apt-cache madison nvidia-docker2 nvidia-container-runtime or yum search --showduplicates nvidia-docker2 nvidia-container-runtime to list the available versions.

# Other distributions and architectures
# Install the repository for your distribution by following the instructions here.

# Basic usage
# nvidia-docker registers a new container runtime to the Docker daemon.
# You must select the nvidia runtime when using docker run:

# docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi