# 基础镜像
FROM ubuntu:latest

# 维护者信息
MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# 更新源
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get clean

# 安装supervisor
RUN apt-get install -y supervisor

# 安装ssh-server
RUN apt-get install -y openssh-server openssh-client
RUN mkdir -p /var/run/sshd
RUN echo "root:123456" | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# 安装JDK 7
ADD jdk-8u121-linux-x64.tar.gz /usr/local/
ENV JAVA_HOME /usr/local/jdk1.8.0_121
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JRE_HOME/lib
ENV PATH $PATH:$JAVA_HOME/bin 

# docker build -t dockerfile-jdk-tomcat /home/mezhou887/Downloads/test
# docker run -it dockerfile-jdk-tomcat
