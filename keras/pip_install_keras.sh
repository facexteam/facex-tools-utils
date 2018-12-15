#!/bin/bash

# pip install keras
local_cache='./python-packages'

if [[ $# -gt 1 ]]; then
    local_cache=$2
fi

echo 'local cache path: ' $local_cache

pip install --find-links=$local_cache keras
