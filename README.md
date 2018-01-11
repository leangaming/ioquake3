# Lean Gaming - ioquake3

[![Build Status](https://travis-ci.org/leangaming/ioquake3.svg?branch=master)](https://travis-ci.org/leangaming/ioquake3)
[![Docker Hub](https://img.shields.io/docker/pulls/leangaming/ioquake3.svg)](https://hub.docker.com/r/leangaming/ioquake3)

## ioquake3

[ioquake3](https://ioquake3.org/) is an improved open source implementation of the Quake 3 engine.

## docker-compose

An easy of getting this up and running is to just use [`docker-compose`](https://docs.docker.com/compose/overview/) with the following contents in your `docker-compose.yml` file:

```
quake3:
  image: leangaming/ioquake3:alpha
  ports:
    - 27960:27960/udp
  volumes:
    - ./ioquake3/baseq3/pak0.pk3:/home/ioq3/ioquake3/baseq3/pak0.pk3
    - ./ioquake3/baseq3/pak1.pk3:/home/ioq3/ioquake3/baseq3/pak1.pk3
    - ./ioquake3/baseq3/pak2.pk3:/home/ioq3/ioquake3/baseq3/pak2.pk3
    - ./ioquake3/baseq3/pak3.pk3:/home/ioq3/ioquake3/baseq3/pak3.pk3
    - ./ioquake3/baseq3/pak4.pk3:/home/ioq3/ioquake3/baseq3/pak4.pk3
    - ./ioquake3/baseq3/pak5.pk3:/home/ioq3/ioquake3/baseq3/pak5.pk3
    - ./ioquake3/baseq3/pak6.pk3:/home/ioq3/ioquake3/baseq3/pak6.pk3
    - ./ioquake3/baseq3/pak7.pk3:/home/ioq3/ioquake3/baseq3/pak7.pk3
    - ./ioquake3/baseq3/pak8.pk3:/home/ioq3/ioquake3/baseq3/pak8.pk3
    - ./ioquake3/baseq3/server.cfg:/home/ioq3/.q3a/baseq3/server.cfg
```

## Lean Gaming?

LeanGaming aims to provide small (lean) docker images to run prebuilt dedicated servers for various video games. You can find all of our images and source code [here](https://github.com/leangaming).
