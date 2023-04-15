FROM ubuntu 
RUN apt-get update 
RUN apt-get install -y build-essential
RUN apt-get install –y apache2 
RUN apt-get install –y apache2-utils 
RUN apt-get update && apt-get install -y build-essential
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

