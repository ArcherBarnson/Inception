#!/bin/sh

#service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"

mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"

mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"

mysql -e "FLUSH PRIVILEGES;"

echo "jvous ai dit c la"

mysqladmin -u $SQL_USER -p $SQL_PASSWORD shutdown

echo "et apres la c nul"

exec mysqld_safe

echo "DATABASE READY (maybe)"
