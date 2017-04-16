# 基础镜像
FROM openjdk

# 维护者信息
MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# 清空ubuntu更新包
RUN rm -rf /var/lib/apt/lists/*

# 更新源
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get clean

# 安装基础软件
RUN apt-get install -y wget curl supervisor

WORKDIR /tmp

# 安装Tomcat
ENV TOMCAT_VERSION 8.5.13
ENV TOMCAT_BUILD_VERSION 8
RUN wget http://mirror.bit.edu.cn/apache/tomcat/tomcat-$TOMCAT_BUILD_VERSION/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz && tar -zxvf apache-tomcat-$TOMCAT_VERSION.tar.gz -C /usr/local/; rm -f apache-tomcat-$TOMCAT_VERSION.tar.gz;
ENV CATALINA_HOME /usr/local/apache-tomcat-$TOMCAT_VERSION
ENV PATH $PATH:$CATALINA_HOME/lib:$CATALINA_HOME/bin

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 开放SSH的22端口
EXPOSE 22

# 开放Tomcat的8080端口
EXPOSE 8080

# CMD ["/usr/bin/supervisord"]

# docker build -t dockerfile-tomcat /home/mezhou887/Downloads/dockerfile-jdk-tomcat
# docker run -it dockerfile-tomcat
