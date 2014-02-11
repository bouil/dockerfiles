# docker run -d -p 3306:3306 -v /data/mysql:/var/lib/mysql mysql-image
 
FROM bouil/apache2php5java7
MAINTAINER Nicolas Bouillon <nicolas@bouil.org>

RUN apt-get update && apt-get -y install mysql-server && apt-get clean

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD mysql.conf /etc/supervisor/conf.d/
ADD mysql.sh /etc/supervisor/conf.d/
RUN chmod a+x /etc/supervisor/conf.d/mysql.sh

# Expose mysql port
EXPOSE 3306

ENV MYSQL_USER root
ENV MYSQL_PASSWORD root

CMD ["/opt/start.sh"]


