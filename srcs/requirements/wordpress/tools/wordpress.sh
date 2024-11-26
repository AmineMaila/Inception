#!/bin/bash

sleep 10

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

echo "listen = 9000" >> /etc/php/7.4/fpm/pool.d/www.conf

cd /var/www/html

wp core download --allow-root

wp config create --dbname=$MDB_DATABASE --dbuser=$MDB_USER --dbpass=$MDB_PASSWORD --dbhost=$MDB_HOST --allow-root

wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root

wp user create $WP_USER_NAME $WP_USER_EMAIL --user_pass=$WP_USER_PASSWORD --role=editor --allow-root

wp config set WP_CACHE true --allow-root

wp config set WP_REDIS_HOST rds --allow-root

wp config set WP_REDIS_PORT 6379 --allow-root

wp plugin install redis-cache --activate --allow-root

wp redis enable --allow-root

mkdir -p /run/php

chmod -R 775 /var/www/html

chown -R www-data:www-data /var/www/html

php-fpm7.4 -F