#!/usr/bin/docker
FROM phusion/baseimage
MAINTAINER Bin Wei <bwei@tronc.com>

RUN apt-get update && apt-get install -y postgresql-client
ADD pgpass /root/.pgpass
ADD *.sql /root/
WORKDIR /root

ENTRYPOINT ["psql", "-h", "redshift.troncdata.com", "-p", "5439", "-d", "dev", "-U", "bwei_redshift", "-f"]
