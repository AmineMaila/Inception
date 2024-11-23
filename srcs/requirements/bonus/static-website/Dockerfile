FROM debian:bullseye

RUN apt-get update -y && apt-get install php -y

RUN mkdir -p /var/www/static-website

COPY /conf/index.html /var/www/static-website
COPY /conf/styles.css /var/www/static-website

WORKDIR /var/www/static-website

ENTRYPOINT ["php", "-S", "0.0.0.0:8080"]