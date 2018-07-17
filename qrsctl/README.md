# Qiniu qrsctl

## qrsctl
参考：
https://developer.qiniu.com/kodo/tools/1300/qrsctl

## 安装

执行
```
./install_qrsctl.sh
```

## 登录
```
qrsctl login <User> <Passwd>
```

## 批量上传
```
./qc_put_batch.sh <bucket> '<string for file list or dir list>' [<bucket prefix>]
```

<string for file list or dir list>: 可以上传整个目录，如果是list，需要把list用单引号包起来，该string支持shell通配符。