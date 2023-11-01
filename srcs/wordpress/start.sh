#!/bin/bash

cd /tmp

if [ ! -e /var/www/html/index.php ]; then
    curl -sL -o - https://wordpress.org/latest.zip | busybox unzip -
    mv ./wordpress/* /var/www/html/
fi

sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 777 /var/www/html

/usr/sbin/php-fpm8.2 --nodaemonize --fpm-config /etc/php/8.2/fpm/php-fpm.conf