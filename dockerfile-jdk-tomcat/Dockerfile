# 基础镜像
FROM ubuntu:16.04  

# 维护者信息
MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# 更新源  
RUN echo "deb http://mirrors.aliyun.com/ubuntu precise main universe"> /etc/apt/sources.list  
RUN apt-get update  
  
# 安装基础软件 
RUN apt-get -y install wget curl supervisor  
  
# 安装 JDK 7  
RUN cd /tmp &&  curl -L 'http://download.oracle.com/otn-pub/java/jdk/7u65-b17/jdk-7u65-linux-x64.tar.gz' -H 'Cookie: oraclelicense=accept-securebackup-cookie; gpw_e24=Dockerfile' | tar -xz  
RUN mkdir -p /usr/lib/jvm  
RUN mv /tmp/jdk1.7.0_65/ /usr/lib/jvm/java-7-oracle/  
  
RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-7-oracle/bin/java 300     
RUN update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-7-oracle/bin/javac 300     
  
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle/  
  
# 安装 tomcat7  
RUN cd /tmp && curl -L 'http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.8/bin/apache-tomcat-7.0.8.tar.gz' | tar -xz  
RUN mv /tmp/apache-tomcat-7.0.8/ /opt/tomcat7/  
  
ENV CATALINA_HOME /opt/tomcat7  
ENV PATH $PATH:$CATALINA_HOME/bin  
  
ADD tomcat7.sh /etc/init.d/tomcat7  
RUN chmod 755 /etc/init.d/tomcat7  
  
# 开放Tomcat的8080端口  
EXPOSE 8080  
  
# 启动命令  
ENTRYPOINT service tomcat7 start && tail -f /opt/tomcat7/logs/catalina.out  

# docker build -t mezhou887/jdk-tomcat .
# docker run -it mezhou887/jdk-tomcat
