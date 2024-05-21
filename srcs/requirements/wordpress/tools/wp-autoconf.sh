#setting up wp admin user
sed -i "s/DB_NAME/$DB_NAME/g" /var/www/wordpress/wp-config-smaple.php
sed -i "s/DB_USER/$DB_ADMIN/g" /var/www/wordpress/wp-config-smaple.php
sed -i "s/DB_PASSWORD/$DB_ADMIN_PW/g" /var/www/wordpress/wp-config-smaple.php
sed -i "s/DB_HOST/$DB_HOSTNAME/g" /var/www/wordpress/wp-config-smaple.php

#default config setup (i think)
wp core install --allow-root url=localhost:9000 --title=bgrulois_inception --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --skip-email --path='/var/www/wordpress'

#adding normal user 1
wp user create --allow-root $WP_USER1 $WP_USER1_EMAIL --user_password=$WP_USER1_PASS --path='/var/www/wordpress'
