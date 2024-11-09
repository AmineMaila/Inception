FROM debian:bullseye

RUN apt-get update -y && apt-get install -y mariadb-server

COPY ./conf/ /conf

WORKDIR /conf

RUN chmod +x mariadb.sh

CMD ["./mariadb.sh"]
