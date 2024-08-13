#!/bin/sh

#wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -P /var/www/html/wordpress/

wget "http://www.adminer.org/latest.php" -O /var/www/wordpress/adminer.php

#chown -R www-data:www-data /var/www/wordpress/adminer.php

chmod 755 /var/www/wordpress/adminer.php

#$ awk '/@ini_set('session.use_trans_sid', '0');/ { print; print  "@ini_set('session.gc_maxlifetime',1440); ;" next }1' foo.input

if [ ! -e /run/php ]; then 
mkdir -p /run/php
fi

#echo "Launching php fpm..."

#if [ -e /etc/php/7.4/fpm/pool.d/www.conf ]; then
#echo "www.conf EXISTS"
#fi

#if [ ! -e /var/lib/php/session ]; then 
#mkdir -p /var/lib/php/session
#fi

chmod 777 /var/lib/php/session

echo "Adminer Ready."

/usr/sbin/php-fpm7.4 -F #-S [::]:9001 -t /var/www/wordpress
