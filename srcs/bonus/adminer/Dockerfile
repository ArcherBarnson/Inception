FROM		debian:bullseye

RUN		apt update -y && apt upgrade -y

RUN		apt install wget php7.4 php7.4-fpm php7.4-mysql -y

COPY		conf/adminer_autoconf.sh /

RUN		chmod +x adminer_autoconf.sh

EXPOSE		9001

ENTRYPOINT	["bash", "./adminer_autoconf.sh"]
