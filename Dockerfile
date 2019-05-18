FROM alpine
MAINTAINER ulif

RUN apk --update add trac \
    python2 \
    python2-dev \
    py-subversion \
    py-babel \
    py-tz \
    subversion \
    apache2 \
    apache2-utils \
    apache2-mod-wsgi

VOLUME ["/trac"]
EXPOSE 80 443

CMD httpd -D FOREGROUND
