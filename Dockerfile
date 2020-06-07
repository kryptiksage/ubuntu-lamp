FROM ubuntu:latest
MAINTAINER Harikrishnan A <kryptiksage@gmail.com>
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
apache2 \
php \
mysql-server
COPY index.php /var/www/html/index.php
COPY hello-world.php /var/www/html/hello-world.php
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN service mysql start
RUN a2enmod rewrite
RUN service apache2 start
CMD apachectl -D FOREGROUND
EXPOSE 80
