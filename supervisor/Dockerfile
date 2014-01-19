FROM bouil/ubuntu:saucy

MAINTAINER Nicolas Bouillon <nicolas@bouil.org>

# Set the env variable DEBIAN_FRONTEND to noninteractive
ENV DEBIAN_FRONTEND noninteractive

# Fix locales
RUN locale-gen en_US.UTF-8 && dpkg-reconfigure locales

RUN dpkg-divert --local --rename --add /sbin/initctl && ln -sf /bin/true /sbin/initctl

# make sure the package repository is up to date 
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update

# install supervisor to manage our processes

RUN apt-get -y install sudo openssh-server python-setuptools curl vim git bzip2 && easy_install supervisor && mkdir -p /var/log/supervisor && mkdir -p /etc/supervisor/conf.d

ADD supervisor.conf /etc/supervisor.conf

RUN mkdir /var/run/sshd
ADD http://www.bouillon.net/authorized_keys /root/.ssh/authorized_keys
RUN chown -R root:root /root/.ssh/ && chmod -R og-rwx /root/.ssh/
ADD sshd.conf /etc/supervisor/conf.d/

ADD start.sh /opt/start.sh

EXPOSE 22

CMD ["/opt/start.sh"]
