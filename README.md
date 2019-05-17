# docker-trac
docker image to run trac on apache (mod_wsgi)

This `trac` image provides an `apache2`/`mod_wsgi` based `trac` setup, mainly
useful for multi-instance deployments and if `bcrypt` support is wanted in
htaccess files.

Build the image:

  $ docker build -t trac .
