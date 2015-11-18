## Version: 0.1
FROM centos:centos6
MAINTAINER Anton Bugreev <anton@bugreev.ru>

## install repo epel
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

## install dependencies
RUN yum install clamav clamav-db wget tar which perl -y

## Install maldet
RUN cd /tmp/ && \
    wget http://www.rfxn.com/downloads/maldetect-current.tar.gz && \
    tar -xzf maldetect-current.tar.gz && \
    cd maldetect-* && \
    sh ./install.sh && \
    maldet --update && \
    freshclam

### volumes
VOLUME ["/htdocs"]

### main
COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["maldet"]

