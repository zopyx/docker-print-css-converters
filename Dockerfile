FROM alpine:3.2
MAINTAINER info@zopyx.com
RUN apk update &&      apk add socat &&        rm -r /var/cache/

ADD https://www.princexml.com/download/prince-11-linux-generic-x86_64.tar.gz /root
