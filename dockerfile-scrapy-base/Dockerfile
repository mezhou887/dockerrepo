# 基础镜像
FROM python:2.7

# 维护者信息
MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# 更新源
RUN echo "deb http://mirrors.aliyun.com/ubuntu precise main universe"> /etc/apt/sources.list 
RUN apt-get update

# 安装基础软件
RUN apt-get -y install wget curl supervisor 

# 安装scrapy
RUN apt-get -y install openssh-server python2.7-dev python-pip zlib1g-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev
RUN pip install setuptools
RUN pip install Scrapy

# 启动命令

# docker build -t mezhou887/scrapy .
# docker run -it mezhou887/scrapy
