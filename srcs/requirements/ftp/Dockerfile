FROM alpine:3.17
WORKDIR /var/www/html
RUN apk update && apk upgrade
RUN apk add vsftpd lftp shadow
COPY conf/vsftpd.conf /etc/vsftpd/
COPY tools/startFTP.sh /startFTP.sh
CMD ["sh", "/startFTP.sh"]
