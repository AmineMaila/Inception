FROM debian:bullseye

RUN apt-get update -y && apt-get install nginx openssl

RUN openssl req

COPY ./conf/nginx.sh /

RUN chmod +x nginx.sh

ENTRYPOINT ["nginx", "-g", "daemon off;"]