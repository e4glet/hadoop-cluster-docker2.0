# 使用docker创建Hadoop分布式集群2.0

#### About this Images

OS：Ubuntu14.04  
JDK Version：8u191  
Hadoop Version：2.7.2  

docker images form：https://github.com/kiwenlau/hadoop-cluster-docker  

#### Overview

本版本在修复原镜像Bug基础上，重新制作了镜像，安装最新的JDK版本（8u191），支持Eclipse JDK1.8版本的开发。


#### N节点Hadoop集群搭建步骤（N>=3）

1. 下载Docker镜像
```c
docker pull e4glet/hadoop:2.0
```
2. 下载GitHub仓库
```c
git clone https://github.com/e4glet/hadoop-cluster-docker2.0
```

3. 创建Hadoop网络
```c
docker network create --driver=bridge hadoop
```
4. 进入配置目录
```c
cd hadoop-cluster-docker2.0
```
5. 重新构建Docker镜像  
以创建5个节点为例（1主4从）    
注意：如果脚本文件没有执行权限  

执行chmod 777 resize-cluster.sh  
给脚本文件添加权限

```c
./resize-cluster.sh 5
```
6. 启动Docker容器
```c
./start-container.sh 5
```
运行结果：
```c
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
start hadoop-slave3 container...
start hadoop-slave4 container...
root@hadoop-master:~# 
```   

7. 启动Hadoop
```c
root@hadoop-master:~#./start-hadoop.sh
```


8. 移除容器
```c
./remove-container.sh 5
```


到此完成。  
