FROM alpine
MAINTAINER Jason Ritzke <jasonritzke@4loopz.com>

RUN apk add --update quassel \
    && rm -rf /var/cache/apk/* \
    && mkdir /var/lib/quassel

VOLUME ["/var/lib/quassel"]
ENTRYPOINT ["quasselcore", "--configdir=/var/lib/quassel/"]
EXPOSE 4242
