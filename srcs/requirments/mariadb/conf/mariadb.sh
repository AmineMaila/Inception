#!/bin/bash

service mariadb start
sleep 5

mariadb -e "CREATE DATABASE IF NOT EXISTS info;"
mariadb -e "CREATE USER IF NOT EXISTS 'mmaila'@'%' IDENTIFIED BY 'amine_120';"
mariadb -e "GRANT ALL PRIVILEGES ON info.* TO 'mmaila';"
mariadb -e "FLUSH PRIVILEGES;"

mysqladmin shutdown

mysqld_safe --bind=address=0.0.0.0
