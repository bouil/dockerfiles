#
# Java Dockerfile
#
# https://github.com/dockerfile/java
#

# Pull base image.
FROM bouil/supervisor

# Install Java
RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:webupd8team/java && apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer && apt-get clean

