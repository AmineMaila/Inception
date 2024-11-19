FROM debian:bullseye

RUN apt-get update -y && apt-get install -y curl php php-fpm php-mysql mariadb-client

COPY ./conf/wordpress.sh /

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/

RUN chmod +x wordpress.sh


ENTRYPOINT ["./wordpress.sh"]