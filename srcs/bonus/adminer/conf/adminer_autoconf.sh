#!/bin/sh

#wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -P /var/www/html/wordpress/

wget "http://www.adminer.org/latest.php" -O /var/www/wordpress/adminer.php

#chown -R www-data:www-data /var/www/wordpress/adminer.php

chmod 755 /var/www/wordpress/adminer.php

#$ awk '/@ini_set('session.use_trans_sid', '0');/ { print; print  "@ini_set('session.gc_maxlifetime',1440); ;" next }1' foo.input

php -S [::]:9001 -t /var/www/wordpress

echo "Adminer Ready."
