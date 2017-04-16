# 基础镜像
FROM python:2.7

# 维护者信息
MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# 清空ubuntu更新包
RUN rm -rf /var/lib/apt/lists/*

# 更新源
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN apt-get -y update && apt-get clean


WORKDIR /tmp

# 安装Scrapy
ENV SCRAPY_VERSION 1.3
RUN pip install scrapy==$SCRAPY_VERSION
RUN pip install scrapy_redis
# RUN pip install -r requirements.txt

# docker build -t docker-scrapy /home/mezhou887/Downloads/dockerfile-scrapy-base
# docker run -it docker-scrapy
