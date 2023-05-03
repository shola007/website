FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get update
RUN apt-get install -y apache2-utils
RUN apt-get clean
COPY ./index.html /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
