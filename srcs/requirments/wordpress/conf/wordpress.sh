#!/bin/bash

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

echo "listen = 9000" >> /etc/php/7.4/fpm/pool.d/www.conf

mv wp-cli.phar /usr/local/bin/wp

mkdir -p /var/www/html

cd /var/www/html

wp core download --allow-root

wp config create --dbname=$MDB_DATABASE --dbuser=$MDB_USER --dbpass=$MDB_PASSWORD --dbhost=$MDB_HOST --allow-root

wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root

wp user create $WP_USER_NAME $WP_USER_EMAIL --user_pass=$WP_USER_PASSWORD --role=editor --allow-root

wp config set WP_CACHE true

wp config set WP_REDIS_HOST rds

wp config set WP_REDIS_PORT 6379

mkdir -p /run/php

export PHP_FPM=$(ls /usr/sbin | grep php-fpm)

$PHP_FPM -F