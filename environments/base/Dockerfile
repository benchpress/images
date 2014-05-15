FROM ubuntu
MAINTAINER Thom Seddon <thom@seddonmedia.co.uk>

RUN locale-gen en_US.UTF-8
RUN useradd ubuntu

ADD rootfs/etc /etc/
ADD rootfs/home/ubuntu /home/ubuntu

RUN chown -R ubuntu:ubuntu /home/ubuntu/ && chmod 0440 /etc/sudoers

WORKDIR /home/ubuntu
USER ubuntu
ENV HOME /home/ubuntu
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LOGNAME ubuntu
ENV TERM xterm

ADD scripts /var/cache/benchpress/scripts
RUN cd /var/cache/benchpress/scripts && ./all && sudo rm -rf /var/cache/benchpress/scripts
