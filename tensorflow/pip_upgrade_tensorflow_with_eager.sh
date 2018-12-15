#!/bin/bash

# pip install -q --upgrade tensorflow==1.11

local_cache='./python-packages'

if [[ $# -gt 2 ]]; then
    local_cache=$2
fi

echo 'local cache path: ' $local_cache

pip install --find-links=$local_cache -q --upgrade tensorflow==1.11