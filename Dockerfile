FROM ubuntu:12.04
RUN apt-get update && apt-get -y upgrade
ADD rfc5766-turn-server_3.2.2.5-1_amd64.deb /tmp/rfc5766.deb
RUN dpkg -i /tmp/rfc5766.deb && apt-get -y -f install

EXPOSE 3478 3479