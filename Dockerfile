FROM alpine
MAINTAINER Jason Ritzke <jasonritzke@4loopz.com>

# Stolen from https://microbadger.com/labels          
# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="docker-quasselcore" \
      org.label-schema.description="very simple and light quasselcore with persistent storage" \
      org.label-schema.url="https://github.com/rtzq0/docker-quasselcore" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/rtzq0/docker-quasselcore" \
      org.label-schema.vendor="e.g. ACME Inc" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"
	
RUN apk add --update quassel \
    && rm -rf /var/cache/apk/* \
    && mkdir /var/lib/quassel

VOLUME ["/var/lib/quassel"]
ENTRYPOINT ["quasselcore", "--configdir=/var/lib/quassel/"]
EXPOSE 4242
