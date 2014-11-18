FROM ubuntu:14.04
maintainer Johannes 'fish' Ziemke <docker@freigeist.org>

ENV VERSION 0.9.11.1.678-c48ffd2
ENV URL https://downloads.plex.tv/plex-media-server/$VERSION/plexmediaserver_$VERSION_amd64.deb
RUN apt-get -qy update && apt-get -qy install wget
RUN wget -O /tmp/plex.deb $URL && dpkg -i /tmp/plex.deb; apt-get -qyf install; rm /tmp/plex.deb

RUN mkdir /usr/lib/plexmediaserver/Library && chown plex:plex /usr/lib/plexmediaserver/Library
VOLUME /usr/lib/plexmediaserver/Library

RUN curl -L https://github.com/docker-infra/reefer/releases/download/v0.0.3/reefer.gz | \
    gunzip > /usr/bin/reefer && chmod a+x /usr/bin/reefer

ADD run /
ADD authinfo2.tmpl /var/lib/plexmediaserver/.s3ql/
EXPOSE 32400

ENTRYPOINT [ "reefer", \
  "-t", "/var/lib/plexmediaserver/.s3ql/authinfo2.tmpl", \
  "/run"
]
