#!/bin/sh

if [ ! -e /var/wwww/wordpress/wp-config.php ]; then

#generate cfg file
wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path='/var/www/wordpress'

#default config setup (i think)
wp core install --allow-root url=localhost:9000 --title=bgrulois_inception --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PW --admin_email=$WP_ADMIN_EMAIL --skip-email --path='/var/www/wordpress'

#setting up wp admin user
sed -i "s/DB_NAME/$WP_NAME/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/DB_USER/$WP_ADMIN/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/DB_PASSWORD/$WP_ADMIN_PW/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/DB_HOST/$WP_HOSTNAME/g" /var/www/wordpress/wp-config-sample.php

mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

#adding normal user 1
wp user create --allow-root $WP_USER1 $WP_USER1_EMAIL --user_password=$WP_USER1_PW --path='/var/www/wordpress'

fi
