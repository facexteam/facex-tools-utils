#! /bin/bash
QS='qshell'

echo 'QS='${QS}

#ThreadCount=16
ThreadCount=${nproc}
UploadConfig='./bkt-upload-config.json'

if [[ $# -gt 1 ]]; then
    ThreadCount=$1
fi

if [[ $# -gt 2 ]]; then
    UploadConfig=$2
fi

echo 'ThreadCount='${ThreadCount}
echo 'UploadConfig='${UploadConfig}

nohup ${QS} qupload ${ThreadCount} ${UploadConfig} >> nohup-qupload-log.txt &
