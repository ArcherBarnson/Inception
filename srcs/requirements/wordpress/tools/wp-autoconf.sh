#setting up wp admin user
sed -i "s/DB_NAME/$DB_NAME/g" /var/www/wordpress/wp-config-smaple.php
sed -i "s/DB_USER/$DB_ADMIN/g" /var/www/wordpress/wp-config-smaple.php
sed -i "s/DB_PASSWORD/$DB_ADMIN_PW/g" /var/www/wordpress/wp-config-smaple.php
sed -i "s/DB_HOST/$DB_HOSTNAME/g" /var/www/wordpress/wp-config-smaple.php

#
