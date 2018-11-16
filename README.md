# 使用docker创建Hadoop分布式集群2.0

#### About this Images

OS：Ubuntu16.04  
JDK Version：openjdk8  
Hadoop Version：2.7.2  

#### Overview

This image can be used for develop with Eclipse JDK 1.8.


#### Hadoop cluster construction steps for N node（N>=3）

1. pull docker image
```c
docker pull e4glet/hadoop:2.0
```
2. clone github repository
```c
git clone https://github.com/e4glet/hadoop-cluster-docker2.0
```

3. create hadoop network
```c
docker network create --driver=bridge hadoop
```
4. Entry into the directory
```c
cd hadoop-cluster-docker2.0
```
5. rebuild images for support more nodes  
   
Add execute permission to the script file  
chmod 777 resize-cluster.sh  

like this:

```c
./resize-cluster.sh 5
```
6. create container and run it
```c
./start-container.sh 5
```
result：
```c
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
start hadoop-slave3 container...
start hadoop-slave4 container...
root@hadoop-master:~# 
```   

7. start hadoop
```c
root@hadoop-master:~#./start-hadoop.sh
```


8. stop and remove container
```c
./remove-container.sh 5
```

#### About development

You can Define hadoop location like this:
![alt tag](https://github.com/e4glet/hadoop-cluster-docker2.0/blob/master/20181116092709.png)
