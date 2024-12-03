FROM debian:bullseye

RUN apt-get update -y && apt-get install -y curl php php7.4-fpm php-mysql

COPY ./tools/wordpress.sh /

RUN chmod +x wordpress.sh

ENTRYPOINT ["./wordpress.sh"]