#!/bin/bash
echo "GRANT ALL ON *.* TO $MYSQL_USER@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION; FLUSH PRIVILEGES" > /etc/supervisor/conf.d/password.sql
/usr/bin/mysqld_safe --init-file=/etc/supervisor/conf.d/password.sql 

