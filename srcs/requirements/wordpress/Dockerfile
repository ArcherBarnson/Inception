FROM		debian:bullseye

RUN		apt update -y && apt upgrade -y

RUN 		apt install wget curl vim -y && \
		apt install php7.3 php-fpm php-mysql mariadb-client -y

RUN		wget https://wordpress.org/latest.tar.gz -P /var/www/ && \
		tar xf /var/www/latest.tar.gz /var/www/ && rm rf /var/www/latest.tar.gz

RUN		curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phari && \
		chmod +x wp-cli.phari && \
		mv wp-cli.phar /usr/local/bin/wp

RUN		chmod -R 755 /var/www/wordpress

COPY		./tool/wp-autoconf.sh /wp-autoconf.sh && chmod +x /wp-autoconf.sh

COPY		./conf/www.conf etc/php/7.3/fpm/pool.d

RUN		export DB_NAME=inception_db DB_ADMIN=bgrulois DB_ADMIN_PW=lol123 DB_HOSTNAME=bgrulois42.fr

ENTRYPOINT	["wp-autoconf.sh"]
