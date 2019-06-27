FROM stellar/base:latest

MAINTAINER Mat Schaffer <mat@stellar.org>

ENV STELLAR_CORE_VERSION 11.2.0-971-346dfe24

EXPOSE 11625
EXPOSE 11626

VOLUME /data
VOLUME /postgresql-unix-sockets
VOLUME /heka

ADD install /
RUN /install

ADD heka /heka
ADD confd /etc/confd
ADD utils /utils
ADD start /

CMD ["/start"]
