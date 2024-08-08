#!/bin/sh

wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -P /var/www/html/wordpress/

echo "Adminer Ready."

php -S [::]:9001 -t /var/www/html/wordpress
