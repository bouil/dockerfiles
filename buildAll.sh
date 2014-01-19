#!/bin/bash
(cd ubuntu && ./saucy.sh)
docker build -rm -t bouil/supervisor supervisor/ || exit 1
docker build -rm -t bouil/apache2 apache2 || exit 1
docker build -rm -t bouil/apache2php5 apache2php5 || exit 1
docker build -rm -t bouil/mysql mysql || exit 1
docker build -rm -t bouil/nodejs nodejs || exit 1
docker build -rm -t bouil/yeoman yeoman || exit 1

