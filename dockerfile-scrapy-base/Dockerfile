# 基础镜像
FROM ubuntu

# 维护者信息
MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# 更新源
RUN apt-get update
 
# 安装scrapy
RUN apt-get -y install python-dev python-pip ssh
RUN pip install --upgrade pip
RUN pip install scrapy requests
RUN pip list --outdated | grep '^[a-z]* (' | cut -d " " -f 1 | xargs pip install -U