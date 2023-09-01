FROM alpine:3.17
WORKDIR /var/www/html
RUN apk update && apk upgrade
RUN apk add nginx openssl fcgi
COPY ./conf/default.conf /etc/nginx/http.d/default.conf
COPY ./tools/startNginx.sh /startNginx.sh
CMD ["sh", "/startNginx.sh"]
