mv object-cache.php /var/www/html/wordpress/object-cache.php
while ! mysqladmin ping -h mariadb; do sleep 1; done;

mv /var/www/html/wordpress/* .
wp config create --dbname=${DATABASE_NAME} --dbuser=${WP_USER_NAME} --dbpass=${WP_USER_PASSWORD} --dbhost="mariadb"
wp core install --url=${DOMAIN_NAME} --title="inception" --admin_user=${WP_ADMIN_NAME} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_MAIL} --skip-email --allow-root

wp plugin install redis-cache --activate
wp config set WP_REDIS_HOST "redis"
wp redis enable

wp user create ${WP_USER_NAME} ${WP_USER_MAIL} --user_pass=${WP_USER_PASSWORD}
exec /usr/sbin/php-fpm81 -F
