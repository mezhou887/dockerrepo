# Pull base image
FROM ubuntu: 16.04

MAINTAINER Zhou Maoen "mezhou887@foxmail.com"

# update source  
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe"> /etc/apt/sources.list  
RUN apt-get update
RUN apt-get upgrade


# Install curl  
RUN apt-get -y install curl