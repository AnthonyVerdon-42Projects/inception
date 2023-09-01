FROM alpine:3.17
WORKDIR /var/www/html
RUN apk update && apk upgrade
RUN apk add php \
	php-fpm \
	php-phar \
	php-mysqli \
	mariadb-client \
	mysql-client \
	php-mbstring \
	php-tokenizer 
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp
RUN wget https://wordpress.org/latest.tar.gz \
	&& tar -xf latest.tar.gz \
	&& rm -rf latest.tar.gz
COPY ./conf/php-fpm /etc/php81/php-fpm.d/www.conf
COPY ./tools/startWordPress.sh /startWordPress.sh
CMD ["sh", "/startWordPress.sh"]
