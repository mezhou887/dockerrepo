# 基础镜像
FROM ubuntu

# 维护者信息
MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# 更新源
RUN apt-get update
 
# 安装scrapy
RUN apt-get -y install python-dev python-pip
RUN pip install --upgrade pip
RUN pip install scrapy