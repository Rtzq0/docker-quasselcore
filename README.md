# docker-quasselcore
 [![](https://images.microbadger.com/badges/image/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own image badge on microbadger.com")
 [![](https://images.microbadger.com/badges/version/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own version badge on microbadger.com")
 [![](https://images.microbadger.com/badges/commit/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own commit badge on microbadger.com") 

Alpine officially packaged quassel in a dockerfile!

# Guide

Sample command to run:

```
docker run -it -d --name quasselcore -v /srv/docker/quassel:/var/lib/quassel \
  -p 0.0.0.0:4242:4242/tcp rtzq0/docker-quasselcore
```
