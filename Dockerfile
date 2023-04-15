FROM ubuntu 
RUN apt-get update
RUN apt-get install –y httpd
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
