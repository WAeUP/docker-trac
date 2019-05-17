FROM python:2-alpine
MAINTAINER ulif

RUN apk --update add trac \
    python2 \
    python2-dev \
    py-subversion \
    subversion \
    apache2 \
    apache2-mod-wsgi

VOLUME ["/trac"]
EXPOSE 80 443

CMD httpd -D FOREGROUND
