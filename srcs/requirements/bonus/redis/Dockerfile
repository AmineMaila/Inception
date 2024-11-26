FROM debian:bullseye

RUN apt-get update -y && apt-get install redis-server -y

# COPY ./tools/redis.sh /

# RUN chmod +x redis.sh

ENTRYPOINT ["redis-server", "--bind 0.0.0.0", "--protected-mode no"]