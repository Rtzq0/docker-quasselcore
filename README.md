# docker-quasselcore
 [![](https://images.microbadger.com/badges/image/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own image badge on microbadger.com")
 [![](https://images.microbadger.com/badges/version/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own version badge on microbadger.com")
 [![](https://images.microbadger.com/badges/commit/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own commit badge on microbadger.com") 

Alpine officially packaged quasselcore in a dockerfile!

# Guide

Sample command to run, as root of course:

```
# First create a TLS keypair for quassel to use
mkdir -p /srv/docker/quasselcore
openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
  -keyout /srv/docker/quasselcore/quasselCert.pem
  -out /srv/docker/quasselcore/quasselCert.pem 
  -subj "/C=US/ST=California/L=Los Angeles/O=$(hostname -d)/OU=quasselcore/CN=$(hostname -f)"
# Then pull and run the docker image with local storage at
# /srv/docker/quasselcore and mounting to port 4242
docker run -it -d --name quasselcore -v /srv/docker/quasselcore:/var/lib/quassel \
  -p 0.0.0.0:4242:4242/tcp --restart=unless-stopped rtzq0/docker-quasselcore
```

The location of the TLS certificate is something you may want to change.
