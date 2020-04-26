FROM centos:7
RUN yum -y update
RUN yum -y install initscripts
RUN yum install -y java-1.8.0-openjdk
RUN yum install -y java-11-openjdk-devel.x86_64
RUN yum clean all


ADD install-hadoop.sh /
ADD setup-hadoop.sh /
RUN chmod +x install-hadoop.sh
RUN chmod +x setup-hadoop.sh
RUN ./install-hadoop.sh
COPY config/* /opt/hadoop/etc/hadoop/


RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa && \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys
RUN ssh-keygen -A
RUN ./setup-hadoop.sh

EXPOSE 9870

CMD ["bash"]