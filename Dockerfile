FROM alpine:latest
MAINTAINER Karolis Stasaitis <stkarolis@gmail.com>

RUN adduser ioq3 -D

RUN \
  apk --no-cache add curl g++ gcc git make && \
  su ioq3 -c "\
  mkdir -p /tmp/build && \
  curl https://raw.githubusercontent.com/ioquake/ioq3/master/misc/linux/server_compile.sh -o /tmp/build/compile.sh && \
  echo y | sh /tmp/build/compile.sh && \
  mkdir -p /home/ioq3/.q3a/baseq3 && \
  rm -rf /tmp/build/\
  " && \
  apk del curl g++ gcc git make
 
USER ioq3

EXPOSE 27960/udp

CMD /home/ioq3/ioquake3/ioq3ded.x86_64 +exec server.cfg