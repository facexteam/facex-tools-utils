#!/bin/bash

# pip install mxnet-cu90
local_cache='./python-packages'

if [[ $# -gt 2 ]]; then
    local_cache=$2
fi

echo 'local cache path: ' $local_cache

pip install --find-links=$local_cache mxnet-cu90