FROM alpine:3.17
WORKDIR /var/www/html
RUN apk update && apk upgrade
RUN apk add redis
CMD ["redis-server", "--protected-mode no"]
