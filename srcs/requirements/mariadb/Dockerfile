FROM		debian:bullseye

RUN		apt update -y & apt upgrade -y

RUN		apt install curl vim wget -y && apt install mariadb-server

COPY		./tools/db-conf.sh /db-conf.sh

RUN		chmod -x /db-conf.sh

EXPOSE		3306

ENTRYPOINT	["./db-conf.sh"]
