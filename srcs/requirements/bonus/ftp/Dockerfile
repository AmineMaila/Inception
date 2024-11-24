FROM debian:bullseye

RUN apt-get update -y && apt-get install -y vsftpd

COPY ./tools/ftp.sh /

RUN chmod +x ftp.sh

ENTRYPOINT ["./ftp.sh"]