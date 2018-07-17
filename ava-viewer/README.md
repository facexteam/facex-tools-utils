# AVA 图片查看工具

Copy from cf [AVA 图片查看工具]( https://cf.qiniu.io/pages/viewpage.action?pageId=62048997)

由 王 克纯创建, 最后修改于2018-07-11 转至元数据起始
issue：  ATLAB-3646 - AVA/K8S 容器内图片查看工具的强烈需求 完成

## 准备：

方式1-通过跳板机登陆 pod：
```
qssh xs713
kubectl exec --namespace ava  -it < POD 名称>  bash
``` 
 
方式2-通过ava-portal：

打开 ava portal 里面的在线终端登陆 pod
 
 
推荐通过跳板机，因为ava-portal目前容易断开连接


## 安装：
```
rm -f /bin/ava-viewer && wget http://qr.hi-hi.cn/ava-viewer -O /bin/ava-viewer && chmod +x /bin/ava-viewer
# 如果没有wget只有curl
rm -f /bin/ava-viewer && curl http://qr.hi-hi.cn/ava-viewer -o /bin/ava-viewer && chmod +x /bin/ava-viewer
# 如果都没有 @quxiao
```

## 启动服务+外网访问
执行命令：
```
ava-viewer serve <你的英文名称>
```

上述命令会显示一个 网址，点开，输入 用户名 ava 密码 ava-viewer

如果提示端口占用，可以运行下面的命令再运行
```
pkill ava-viewer
```

## 限制&TODO&bug：
以下的限制后续应该会视优先级解决掉

目前只支持 http://dashboard.ke-xs-sys.qiniu.io/#!/pod?namespace=ava   ava 这个 namespace 的pod

目前同一个用户启动多个实例的时候，会出问题，如果不确定这个用户名已经启动过示例，可以在名称后面加 数字，比如  ava-viewer serve wangkechun-23333

目前单个pod只支持启动一个进程

如果一个浏览器要打开两个不同用户的链接的话，可以用隐私窗口，或者chrome的多用户功能



## Update:

20180313: 打开大目录只显示前1000个文件或者文件夹，避免卡死

20180503: 支持删除文件功能

20180711: 支持jjh机房