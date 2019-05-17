# docker-trac
docker image to run trac on apache (mod_wsgi)

This `trac` image provides an `apache2`/`mod_wsgi` based `trac` setup, mainly
useful for multi-instance deployments and if `bcrypt` support is wanted in
htaccess files.

Build the image:

    $ docker build -t trac .

Start up a container using the image:

    $ docker run --name trac --rm -p 8080:80 -v $PWD/data/trac/:/trac -v $PWD/data/apache2/trac.conf:/etc/apache2/conf.d/trac.conf trac

Now, you can use the running container to create a `htpasswd` file:

    $ docker exec -it trac htpasswd -c -b -B /trac/users.htpasswd <user> <passwd>

To get a shell inside the running container, use

    $ docker exec -it trac ash
