FROM		debian:bullseye

RUN		apt update -y && apt upgrade -y

RUN		apt install wget

COPY		conf/adminer-autoconf.sh /

EXPOSE		9001

ENTRYPOINT	["/adminer-autoconf.sh"]
