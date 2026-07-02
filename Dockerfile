FROM ubuntu:24.04
RUN apt-get update
RUN apt-get install apache2 -y
COPY . /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
