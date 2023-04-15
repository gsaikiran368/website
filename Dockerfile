FROM ubuntu 
RUN apt-get update && apt-get install -y build-essentials
RUN apt-get install –y apache2 && apt-get install –y apache2-utils 
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

