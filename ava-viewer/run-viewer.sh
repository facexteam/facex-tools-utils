#!/bin/bash
#!/bin/bash

service_name=viewer-zyf
root_dir='./'

if [ $# -gt 0 ]; then
    service_name=$1
fi

if [ $# -gt 1 ]; then
    root_dir=$2
fi

nohup ava-viewer serve ${service_name}