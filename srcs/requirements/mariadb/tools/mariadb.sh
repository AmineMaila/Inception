#!/bin/bash

service mariadb start
sleep 5

mariadb -e "CREATE DATABASE IF NOT EXISTS $MDB_DATABASE;"
mariadb -e "CREATE USER IF NOT EXISTS \`$MDB_USER\`@'%' IDENTIFIED BY '$MDB_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON info.* TO \`$MDB_USER\`@'%';"
mariadb -e "FLUSH PRIVILEGES;"

mysqladmin shutdown

mysqld_safe --bind-address=0.0.0.0
