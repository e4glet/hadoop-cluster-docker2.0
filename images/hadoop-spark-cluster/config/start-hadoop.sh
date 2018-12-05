#!/bin/bash
echo -e "\n"

echo "Starting hadoop..."

echo -e "\n"

$HADOOP_HOME/sbin/start-dfs.sh

echo -e "\n"

$HADOOP_HOME/sbin/start-yarn.sh

echo -e "\n"

echo "Starting Spark..."

echo -e "\n"
# create spark.directory on HDFS
hadoop fs -mkdir -p historyserverforSpark

echo -e "\n"
# start spark
$SPARK_HOME/sbin/start-all.sh

echo -e "\n"
