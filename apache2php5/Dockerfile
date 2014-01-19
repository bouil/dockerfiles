FROM bouil/apache2
MAINTAINER Nicolas Bouillon <nicolas@bouil.org>

RUN apt-get update && apt-get install php5 libapache2-mod-php5 php-auth php-auth-sasl php-gettext php-mdb2 php-mdb2-driver-mysql php-net-sieve php-net-smtp php-net-socket php-pear php5-cli php5-common php5-curl php5-exactimage php5-gd php5-imagick php5-intl php5-mcrypt php5-mysql php5-pspell php5-tidy -y --force-yes && apt-get clean && service apache2 restart
 
