#!/bin/bash
#install or upgrade docker
#https://docs.docker.com/install/linux/docker-ce/ubuntu/#upgrade-docker-ce

# Uninstall old versions
# Older versions of Docker were called docker or docker-engine. If these are installed, uninstall them:

apt-get remove docker docker-engine docker.io

# Update the apt package index:

apt-get update
# Install packages to allow apt to use a repository over HTTPS:

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker’s official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
# Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88, by searching for the last 8 characters of the fingerprint.

apt-key fingerprint 0EBFCD88

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update
# Install the latest version of Docker CE, or go to the next step to install a specific version:

apt-get install docker-ce