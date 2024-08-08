FROM		debian:bullseye

RUN		apt update -y && apt upgrade -y

RUN		apt install curl nginx -y

RUN		mkdir /var/web

COPY		../html/index.html ./var/web/

COPY		conf/nginx.conf etc/nginx/nginx.conf	

EXPOSE		9999

ENTRYPOINT	["nginx", "-g", "daemon off;"]
