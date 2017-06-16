#!/usr/bin/docker
FROM phusion/baseimage
MAINTAINER Bin Wei <bwei@tronc.com>

RUN apt-get update && apt-get install -y postgresql-client
ADD *.sql /home/bwei/
WORKDIR /home/bwei

ENTRYPOINT ["psql", "-h", "redshift.troncdata.com", "-p", "5439", "-d", "dev", "-U", "bwei_redshift", "-f"]
