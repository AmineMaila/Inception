FROM debian:bullseye

RUN apt-get update -y && apt-get install wget -y

RUN wget https://github.com/portainer/portainer/releases/download/2.21.3/portainer-2.21.3-linux-amd64.tar.gz

COPY ./tools/portainer.sh /

RUN chmod +x portainer.sh

ENTRYPOINT ["./portainer.sh"]