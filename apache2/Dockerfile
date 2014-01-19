FROM bouil/supervisor
MAINTAINER Nicolas Bouillon <nicolas@bouil.org>

RUN apt-get update && apt-get install apache2 -y && apt-get clean

ADD apache2.conf /etc/supervisor/conf.d/
 
# Expose apache port
EXPOSE 80 

