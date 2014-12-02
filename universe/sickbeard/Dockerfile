FROM ubuntu:14.04

MAINTAINER Johannes 'fish' Ziemke @discordianfish

RUN apt-get -qy update && apt-get -qy install git python3-openssl python-cheetah

RUN git clone https://github.com/midgetspy/Sick-Beard.git /sickbeard

VOLUME /data
WORKDIR /data
EXPOSE 8081
ADD run /
ENTRYPOINT [ "/run" ]
