#! /bin/bash
#threads=16
threads=`nproc`

if [[ $# -gt 1 ]]; then
    threads=$1
    url=$2
else
    url=$1    
fi

echo 'threads='${threads}

#DL="aria2c -c -x 16 -s ${threads} -j ${threads}"
DL="aria2c -c -x 16 -s ${threads} -j ${threads} --http-proxy=http://nbxs-gate-io.qiniu.com:80"
echo 'download command is: ' ${DL}

${DL} ${url}