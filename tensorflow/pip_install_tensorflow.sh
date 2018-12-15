#!/bin/bash

# Current release for CPU-only
#pip install tensorflow

# Nightly build for CPU-only (unstable)
#pip install tf-nightly

# GPU package for CUDA-enabled GPU cards
# pip install tensorflow-gpu
local_cache='./python-packages'

if [[ $# -gt 2 ]]; then
    local_cache=$2
fi

echo 'local cache path: ' $local_cache

pip install --find-links=$local_cache tensorflow-gpu

# Nightly build with GPU support (unstable)
#pip install tf-nightly-gpu
