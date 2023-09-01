adduser -D ${FTP_USER_NAME}
echo -e "${FTP_USER_PASSWORD}\n${FTP_USER_PASSWORD}" | passwd ${FTP_USER_NAME}
chown root:${FTP_USER_NAME} /home/${FTP_USER_NAME}
chmod 755 /home/${FTP_USER_NAME}
usermod -d /var/www/html ${FTP_USER_NAME}
echo ${FTP_USER_NAME} >> /etc/vsftpd/vsftpd.userlist
mkdir /var/run/vsftpd /var/run/vsftpd/empty
chmod 757 -R /var/www/html
exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
