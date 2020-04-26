export PATH=$PATH:/opt/hadoop/bin:/opt/hadoop/sbin
echo "export PATH=$PATH:/opt/hadoop/bin:/opt/hadoop/sbin" | tee -a /etc/profile
source /etc/profile
bash