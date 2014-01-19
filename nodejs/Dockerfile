FROM bouil/supervisor
MAINTAINER Nicolas Bouillon <nicolas@bouil.org>

RUN apt-get update && apt-get -y install sudo git vim less curl && apt-get clean

#RUN npm install -g yo grunt-cli bower

RUN adduser --disabled-password --gecos "" node
RUN echo "node:node" | chpasswd
RUN adduser node sudo

ADD http://nodejs.org/dist/v0.10.24/node-v0.10.24-linux-x64.tar.gz /tmp/
RUN tar zxvf /tmp/node-v0.10.24-linux-x64.tar.gz -C /home/node/
RUN rm /tmp/node-v0.10.24-linux-x64.tar.gz
RUN chown -R node:node /home/node/node-v0.10.24-linux-x64/
RUN echo 'export PATH=$PATH:/home/node/node-v0.10.24-linux-x64/bin' >> /home/node/.bashrc

CMD ["/opt/start.sh"]
 
