#!/bin/bash

echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

mkdir /run/php
chown www-data:www-data /run/php
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_USER_PW --dbhost=$DB_HOST --dbprefix=wp_ --path=/var/www/html --allow-root
wp core install --url=$URL --title=$TITLE --admin_user=$DB_USER --admin_password=$DB_USER_PW --admin_email=vendetta@docker.com --path=/var/www/html --allow-root
wp user create $USER_NAME abelqasm@docker.com --role=author --user_pass=$USER_PW --path=/var/www/html --allow-root
php-fpm7.3 -F