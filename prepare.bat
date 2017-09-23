#!/bin/bash

# dao
# curl -sSL https://get.daocloud.io/daomonit/install.sh | sh -s 8c560d1209ac6be8b4a5b085fe223bd51b797325
# systemctl restart docker.service

# database
docker pull wnameless/oracle-xe-11g
docker pull alexeiled/docker-oracle-xe-11g
docker pull dkfi/docker-oracle-xe-10g
docker pull mysql
docker pull mongo

# java/tomcat
docker pull java
docker pull tomcat

# linux
docker pull centos
docker pull ubuntu
docker pull oraclelinux
docker pull centos:7

# python
docker pull python

#  middleware
docker pull node
docker pull redis

# scrapy
docker pull vimagick/scrapyd
docker pull trcook/docker-scrapy

# Shipyard  Username: admin Password: shipyard
# docker pull alpineshipyard/shipyard
# docker pull swarm                  
# docker pull shipyard/shipyard      
# docker pull rethinkdb              
# docker pull microbox/etcd          
# docker pull ehazlett/curl          
# docker pull shipyard/docker-proxy  
# curl -sSL https://shipyard-project.com/deploy | bash -s  


