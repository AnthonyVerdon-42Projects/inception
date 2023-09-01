FROM alpine:3.17
WORKDIR /var/www/html
RUN apk update && apk upgrade
RUN apk add php php-session wget php-mysqli
RUN wget https://www.adminer.org/latest.php -O adminer.php
RUN chmod 700 adminer.php
CMD ["php", "-S", "0.0.0.0:8080"]
