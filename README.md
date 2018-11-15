# ʹ��docker����Hadoop�ֲ�ʽ��Ⱥ2.0

#### About this Images

OS��Ubuntu14.04  
JDK Version��8u191  
Hadoop Version��2.7.2  

docker images form��https://github.com/kiwenlau/hadoop-cluster-docker  

#### Overview

���汾���޸�ԭ����Bug�����ϣ����������˾��񣬰�װ���µ�JDK�汾��8u191����֧��Eclipse JDK1.8�汾�Ŀ�����


#### N�ڵ�Hadoop��Ⱥ����裨N>=3��

1. ����Docker����
```c
docker pull e4glet/hadoop:2.0
```
2. ����GitHub�ֿ�
```c
git clone https://github.com/e4glet/hadoop-cluster-docker2.0
```

3. ����Hadoop����
```c
docker network create --driver=bridge hadoop
```
4. ��������Ŀ¼
```c
cd hadoop-cluster-docker2.0
```
5. ���¹���Docker����  
�Դ���5���ڵ�Ϊ����1��4�ӣ�    
ע�⣺����ű��ļ�û��ִ��Ȩ��  

ִ��chmod 777 resize-cluster.sh  
���ű��ļ����Ȩ��

```c
./resize-cluster.sh 5
```
6. ����Docker����
```c
./start-container.sh 5
```
���н����
```c
start hadoop-master container...
start hadoop-slave1 container...
start hadoop-slave2 container...
start hadoop-slave3 container...
start hadoop-slave4 container...
root@hadoop-master:~# 
```   

7. ����Hadoop
```c
root@hadoop-master:~#./start-hadoop.sh
```


8. �Ƴ�����
```c
./remove-container.sh 5
```


������ɡ�  
