# 基础镜像
FROM ubuntu:16.04
# FROM python:2.7

# 维护者信息
MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# 清空ubuntu更新包
RUN rm -rf /var/lib/apt/lists/*

# 更新源
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade && apt-get clean

# 安装基础软件
RUN apt-get install -y wget curl supervisor 
RUN apt-get install -y libpython2.7-dev python2.7-dev 
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py

WORKDIR /tmp


# 安装Scrapy
ENV SCRAPY_VERSION 1.3
RUN pip install scrapy-$SCRAPY_VERSION
RUN pip install scrapy_redis
# RUN pip install -r requirements.txt

# docker build -t dockerfile-scrapy /home/mezhou887/Downloads/test
# docker run -it dockerfile-scrapy
