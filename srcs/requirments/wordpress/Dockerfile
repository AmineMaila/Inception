FROM debian:bullseye

RUN apt-get update -y && apt-get install -y curl php php-fpm php-mysql mariadb-client

COPY ./conf/wordpress.sh /

RUN chmod +x wordpress.sh

ENTRYPOINT ["./wordpress.sh"]