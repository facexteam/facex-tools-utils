# Qiniu qshell scripts

## qshell
参考：
1. 官方文档：
https://developer.qiniu.com/kodo/tools/1302/qshell
2. github：
https://github.com/qiniu/qshell

## qupload
参考： https://github.com/qiniu/qshell/blob/master/docs/qupload.md

1. 复制并修改[bkt-upload-config.json](./bkt-upload-config.json)里面的相关字段，主要为src_dir, bucket, key_prefix, skip_*.
2. 执行
```
./qupload.sh [<线程个数>] [<config_json>]
```

## qdownload
参考：
https://github.com/qiniu/qshell/blob/master/docs/qdownload.md


1. 复制并修改[bkt-download-config.json](./bkt-download-config.json)里面的相关字段，主要为dest_dir, bucket, prefix, suffixes.
2. 执行
```
./qdownload.sh [<线程个数>] [<config_json>]
```