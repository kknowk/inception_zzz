#!/bin/bash

chown -R www-data:www-data /var/www/*;

chmod +x /var/www/html

cd /var/www/html

wp core download --allow-root

# WordPressの設定ファイルを生成
wp config create --path=/var/www/html --dbname=$MARIADB_DATABASE --dbuser=$MARIADB_USERNAME --dbpass=$MARIADB_PASSWORD --dbhost=mariadb --allow-root

# WordPressのサイトをインストール
wp core install --path=/var/www/html --url=$YOUR_SITE_URL --title="WordPress Site" --admin_user=$ADMIN_USERNAME --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
sleep 10;
wp user create $USERNAME $USER_EMAIL --display_name=$USERNAME --user_pass=$PASSWORD --role=author --allow-root

# ファイルのパーミッションの変更
chmod -R 777 /var/www/html

# PHP-FPMの起動
/usr/sbin/php-fpm8.2 --nodaemonize --fpm-config /etc/php/8.2/fpm/php-fpm.conf
