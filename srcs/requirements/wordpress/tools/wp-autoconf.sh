#!/bin/sh

if [ ! -e /var/wwww/wordpress/wp-config.php ]; then

#generate cfg file
#wp config create	--allow-root \
#			--dbname=$SQL_DATABASE \
#			--dbuser=$SQL_USER \
#			--dbpass=$SQL_PASSWORD \
#			--dbhost=${SQL_DATABASE}:3306 \
#			--path='/var/www/wordpress'

#setting up wp admin user

#cat /var/www/wordpress/wp-config-sample.php

sleep 15

sed -i "s/database_name_here/$SQL_DATABASE/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/username_here/$SQL_USER/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/password_here/$SQL_PASSWORD/g" /var/www/wordpress/wp-config-sample.php
sed -i "s/localhost/$SQL_HOST/g" /var/www/wordpress/wp-config-sample.php
mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

cat /var/www/wordpress/wp-config.php

#default config setup (i think)
wp core install --allow-root url=${SQL_DATABASE}:3306 --title=bgrulois_inception --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PW --admin_email=$WP_ADMIN_EMAIL --skip-email --path='/var/www/wordpress'

#adding normal user 1
wp user create --allow-root $WP_USER1 $WP_USER1_EMAIL --user_password=$WP_USER1_PW --path='/var/www/wordpress'

fi
