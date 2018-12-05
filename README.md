# 使用docker创建Hadoop分布式集群2.0
 # Using docker create hadoop-cluster (Support JDK 8 for development)


#### Supported tags
docker pull e4glet/hadoop:2.0 (only include hadoop)  
docker pull e4glet/hadoop:2.1(include hadoop and spark)  

#### About Images

1. tag:2.0
OS：Ubuntu16.04  
JDK Version：openjdk8  
Hadoop Version：2.7.2  

2. tag:2.1
OS：Ubuntu16.04  
JDK Version：openjdk8  
Hadoop Version：2.7.2  
Spark Version:2.1.3  


#### Overview

This image can be used for develop with Eclipse JDK 1.8.0_191


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

1. How to config in Eclipse  
You can Define hadoop location like this on Eclipse 2018:  
![alt tag](https://github.com/e4glet/hadoop-cluster-docker2.0/blob/master/20181116092709.png)

2. How to upload the testapp in your container  
You will need to mount a Docker volume to every location where hadoop-master writes information.The default hadoop-master requires write access to $PWD/hadoop and /root/hadoop.   

Loot at your start-container.sh  
```c
-v $PWD/hadoop:/root/hadoop
```

If you have a more advanced application that requires hadoop-master to write to other locations, simply add more volume mounts to those locations.

like this:  
![alt tag](https://github.com/e4glet/hadoop-cluster-docker2.0/blob/master/20181116094759.png)  

![alt tag](https://github.com/e4glet/hadoop-cluster-docker2.0/blob/master/20181116094816.png)

That's so cool.AlL right?<<<<<<< .mine
That's so cool.AlL right?

####update

1. new tags:2.1 include spark 2.1.3 

2. start: Is the same like tags:2.0
![alt tag](https://github.com/e4glet/hadoop-cluster-docker2.0/blob/master/hadoop-spark01.png) 

3. spark Web UI : http://HostIP:8040/  
![alt tag](https://github.com/e4glet/hadoop-cluster-docker2.0/blob/master/hadoop-spark02.png)  
![alt tag](https://github.com/e4glet/hadoop-cluster-docker2.0/blob/master/hadoop-spark03.png)  
=======
That's so cool.All right?











>>>>>>> .theirs
