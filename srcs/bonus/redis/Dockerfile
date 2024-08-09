FROM		debian:bullseye

RUN		apt update -y && apt upgrade -y

RUN		apt-get install redis -y

COPY		conf/redis.conf /

EXPOSE		6379

ENTRYPOINT	["redis-server", "/redis.conf"]
