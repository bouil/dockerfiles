FROM bouil/nodejs
MAINTAINER Nicolas Bouillon <nicolas@bouil.org>

RUN apt-get update && apt-get install -y ruby-compass libfontconfig1 libfreetype6 && apt-get clean
RUN su node -c "/home/node/node-v0.10.24-linux-x64/bin/npm install -g yo phantomjs generator-webapp" 

EXPOSE 9000

CMD ["/opt/start.sh"]
 
