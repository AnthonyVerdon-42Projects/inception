sed "s,SSL_KEY_PATH,${SSL_KEY_PATH},g" -i /etc/nginx/http.d/default.conf
sed "s,SSL_CERTF_PATH,${SSL_CERTF_PATH},g" -i /etc/nginx/http.d/default.conf
openssl req -x509 -newkey rsa:4096 -keyout ${SSL_KEY_PATH} -out ${SSL_CERTF_PATH} -sha256 -days 365 -nodes -subj "/CN="${DOMAIN_NAME}""
exec nginx -g "daemon off;"
