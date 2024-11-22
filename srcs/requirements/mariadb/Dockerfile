FROM debian:bullseye

RUN apt-get update -y && apt-get install -y mariadb-server

COPY ./conf/50-server /
COPY ./tools/mariadb.sh /

RUN chmod +x mariadb.sh

CMD ["./mariadb.sh"]
