FROM      ubuntu:14.04
MAINTAINER Lakshmi Narasimhan <badri.dilbert@gmail.com>

RUN wget -O - http://packages.lizardfs.com/lizardfs.key | apt-key add -

RUN echo "deb http://packages.lizardfs.com/ubuntu/trusty trusty main" > /etc/apt/sources.list.d/lizardfs.list
RUN echo "deb-src http://packages.lizardfs.com/ubuntu/trusty trusty main" >> /etc/apt/sources.list.d/lizardfs.list

RUN apt-get -y update

RUN apt-get install lizardfs-master

RUN mkdir -p /var/lib/mfs

cp /var/lib/mfs/metadata.mfs.empty /var/lib/mfs/metadata.mfs

