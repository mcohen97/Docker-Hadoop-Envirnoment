#!/bin/sh

yum install -y wget
cd
wget https://espejito.fder.edu.uy/apache/hadoop/common/hadoop-3.1.3/hadoop-3.1.3.tar.gz
yum install -y perl-Digest-SHA
shasum -a 256 hadoop-3.1.3.tar.gz
mkdir /opt/hadoop
tar -zxvf hadoop-3.1.3.tar.gz -C /opt/hadoop --strip-components 1
yum install -y openssh-server 
yum install -y openssh-clients
cd /