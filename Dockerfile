FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN apt install –y apache2-utils
RUN clean
ADD . /var/www/html
ENTRYPOINT apachectl -D FORGROUND

