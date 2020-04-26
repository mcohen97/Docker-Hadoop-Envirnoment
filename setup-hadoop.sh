#!/bin/sh

/usr/sbin/sshd
export PATH=$PATH:/opt/hadoop/bin:/opt/hadoop/sbin
hdfs namenode -format -force
start-dfs.sh