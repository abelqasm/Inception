#!/bin/bash

service mysql start
mysql -u root -e "CREATE DATABASE wordpress;"
mysql -u root -e "CREATE USER 'vendetta'@'localhost' IDENTIFIED BY 'vendetta123';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'vendetta'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"

