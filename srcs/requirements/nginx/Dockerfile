FROM		debian:bullseye

RUN		apt update -y && apt upgrade -y

RUN		apt install curl nginx vim openssl -y

RUN		mkdir /etc/nginx/ssl

RUN		mkdir /var/run/nginx

RUN		openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=bgrulois.42.fr/UID=bgrulois"

COPY		conf/nginx.conf etc/nginx/nginx.conf	

#EXPOSE		8080	

ENTRYPOINT	["nginx", "-g", "daemon off;"]
