#!/bin/bash
# Start HDFS
$HADOOP_HOME/bin/hdfs namenode -format
$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh

# Start Jupyter Notebook
start-notebook.sh --NotebookApp.token=''
