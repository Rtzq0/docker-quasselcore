# docker-quasselcore
 [![](https://images.microbadger.com/badges/image/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own image badge on microbadger.com")
 [![](https://images.microbadger.com/badges/version/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own version badge on microbadger.com")
 [![](https://images.microbadger.com/badges/commit/rtzq0/docker-quasselcore.svg)](https://microbadger.com/images/rtzq0/docker-quasselcore "Get your own commit badge on microbadger.com") 

Alpine officially packaged quasselcore in a dockerfile!

This image is daily rebuilt with travis to help ensure security!

# Guide

Sample command to run, as root of course:

```shell
# Pull and run the docker image with local storage at /srv/docker/quasselcore
# and mounting to port 4242
docker run --detach --hostname `hostname -f` --env COUNTRY='US' \
  --env STATE='California' --env CITY='Los Angeles'--name quasselcore \
  --volume /srv/docker/quasselcore:/var/lib/quassel \
  -p 0.0.0.0:4242:4242/tcp \
  --restart=unless-stopped rtzq0/docker-quasselcore
```
