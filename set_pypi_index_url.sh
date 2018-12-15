#!/bin/bash
type bash

source=ali

if [[ $# -gt 1 ]]; then
    source=$1
fi
echo 'source: ' $source

# lowercace
source=${source^^}
echo 'lowercase source: ' $source

if [[ "$source" = "aliyun" ]]; then
    source=ali
fi

if [[ "$source" = "tuna" ]]; then
    source=qinghua
fi

if [[ "$source" = "zkd" ]]; then
    source=zhongkeda
fi

if [[ "$source" = "ustc" ]]; then
    source=zhongkeda
fi

case "$source" in
    qinghua)
        index_url="https://pypi.tuna.tsinghua.edu.cn/simple"
        ;;
    zhongkeda)
        index_url="https://pypi.mirrors.ustc.edu.cn/simple"
        ;;
    douban)
        index_url="https://pypi.douban.com/simple"
        ;;
    *)
        index_url="https://mirrors.aliyun.com/pypi/simple"
        ;;
esac

echo "index_url: " $index_url

host_name=${index_url#*//}
echo "host_name: " $host_name
host_name=${host_name%%/*}

echo "host_name: " $host_name

cp -r ./pip.conf.example pip.conf
rep_str1="s@{index_url}@${index_url}@g"
rep_str2="s@{host_name}@${host_name}@g"

echo $rep_str1
echo $rep_str2

sed -i -e "$rep_str1" -e "$rep_str2" pip.conf
echo "pip_config: "
cat pip.conf

mkdir ~/.pip
cp pip.conf ~/.pip

