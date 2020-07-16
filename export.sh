#!/bin/bash
_now=$(date +"%m_%d_%Y")
_file="data_$_now.sql"

MYSQL_DATABASE='wordpress'
MYSQL_ROOT_PASSWORD='wordpress'

EXPORT_COMMAND='exec mysqldump "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD"'
docker-compose exec db sh -c "$EXPORT_COMMAND" > $_file

sed -i 1,1d $_file
