#!/bin/bash
#install or upgrade docker
#https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0)

docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f
apt-get purge nvidia-docker

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
