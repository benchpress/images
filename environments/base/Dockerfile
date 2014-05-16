FROM benchpress/ubuntu
MAINTAINER Thom Seddon <thom@seddonmedia.co.uk>

ADD rootfs/etc /etc/

ADD scripts /var/cache/benchpress/scripts
RUN cd /var/cache/benchpress/scripts && ./all && sudo rm -rf /var/cache/benchpress/scripts
