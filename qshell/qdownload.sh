#! /bin/bash
QS='qshell'

echo 'QS='${QS}

#ThreadCount=16
ThreadCount=${nproc}
DownloadConfig='./bkt-download-config.json'

if [[ $# -gt 1 ]]; then
    ThreadCount=$1
fi

if [[ $# -gt 2 ]]; then
    DownloadConfig=$2
fi

echo 'ThreadCount='${ThreadCount}
echo 'DownloadConfig='${DownloadConfig}

nohup ${QS} qdownload ${ThreadCount} ${DownloadConfig} >> nohup-qdownload-log.txt &
