touch cnf
echo "[server]" >> cnf
echo "port = 3306" >> cnf
cp cnf /etc/my.cnf.d/mariadb-server.cnf
mariadb-install-db --user=root --datadir=/var/lib/mysql/data --skip-test-db
sed "s/DATABASE_NAME/${DATABASE_NAME}/g" -i /sql_command
sed "s/USER_NAME/${WP_USER_NAME}/g" -i /sql_command
sed "s/USER_PASSWORD/${WP_USER_PASSWORD}/g" -i /sql_command
exec mariadbd --no-defaults --init-file="/sql_command" --user=root --datadir=/var/lib/mysql/data
