FROM debian:bullseye

RUN apt-get update && apt-get upgrade && apt-get install mariadb-server

COPY ./conf/mariadb.sh /

ENTRYPOINT ["/mariadb.sh"]