#!/bin/bash

# the default node number is 3
N=${1:-3}


# start hadoop master container
sudo docker rm -f hadoop-master &> /dev/null
echo "start hadoop-master container..."
sudo docker run -itd \
                --net=hadoop \
                -p 50070:50070 \
                -p 8088:8088 \
                -p 8089:9000 \
                -p 18080:18080 \
                -p 8040:4040 \
                -p 8077:7077 \
                --privileged=true \
                -v $PWD/hadoop:/root/hadoop \
                --name hadoop-master \
                --hostname hadoop-master \
                --restart always \
                e4glet/hadoop:2.1 &> /dev/null


# start hadoop slave container
i=1
while [ $i -lt $N ]
do
	sudo docker rm -f hadoop-slave$i &> /dev/null
	echo "start hadoop-slave$i container..."
	sudo docker run -itd \
	                --net=hadoop \
	                --name hadoop-slave$i \
	                --hostname hadoop-slave$i \
	                --restart always \
	                e4glet/hadoop:2.1 &> /dev/null
	i=$(( $i + 1 ))
done 

# get into hadoop master container
sudo docker exec -it hadoop-master bash
