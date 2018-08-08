#!/bin/bash
echo 'usage: split_file.sh <input_file> <n_splits>'

if [ $# -lt 1 ]; then
    echo 'Please check input arguments'    
    exit
fi

split -d -c $2 $1 $1-split-