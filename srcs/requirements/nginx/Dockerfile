FROM		debian:bullseye

RUN		apt update -y && apt upgrade -y

RUN		apt install curl nginx vim openssl -y

COPY		conf/nginx.conf etc/nginx/nginx.conf	

EXPOSE		8080

ENTRYPOINT	["nginx", "-g", "daemon off;"]
