FROM debian:bullseye

RUN apt-get update -y && apt-get install redis-server -y

ENTRYPOINT ["redis-server", "--bind", "0.0.0.0"]