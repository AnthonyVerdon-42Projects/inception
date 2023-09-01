FROM alpine:3.17
WORKDIR /var/www/html
RUN apk update && apk upgrade
RUN apk add mysql mysql-client
RUN apk add mariadb
RUN mkdir /run/mysqld
COPY tools/startDB.sh /startDB.sh
COPY conf/sql_command /sql_command
CMD ["sh", "/startDB.sh"]
