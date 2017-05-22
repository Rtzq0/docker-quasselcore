#!/bin/sh
# Liberally stolen from https://github.com/lazyfrosch/docker-quasselcore/

echo "Setting permissions for $QUASSEL_HOME"
chown -R $QUASSEL_USER "$QUASSEL_HOME"
chmod 0700 "$QUASSEL_HOME"

HOSTNAME=`hostname -f`
DOMAIN=`hostname -d`

if [ ! -e "$QUASSEL_CERT" ]; then
  echo "Creating certificate for quassel at $QUASSEL_CERT"
  su-exec $QUASSEL_USER \
    openssl req -x509 -nodes -batch -days 365 -newkey rsa:4096 \
      -subj "/C=$COUNTRY/ST=$STATE/L=$CITY/O=${DOMAIN:-localdomain}/OU=quasselcore/CN=${DOMAIN:-localhost}" \
      -keyout $QUASSEL_CERT -out $QUASSEL_CERT
fi

exec "$@"
