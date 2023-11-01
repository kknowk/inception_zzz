#!/bin/bash

if [ -n "$MARIADB_DATABASE" ] && [ -n "$MARIADB_USERNAME" ] && [ -n "$MARIADB_PASSWORD" ]; then

  su -s /bin/bash -c "mysqld > /dev/null" mysql &

  while ! nc -z localhost 3306; do
    ping -i 3 -c 2 localhost > /dev/null
  done

  echo "[SQL]> CREATE DATABASE '$MARIADB_DATABASE';"
  echo "CREATE DATABASE $MARIADB_DATABASE;" | mariadb

  echo "[SQL]> CREATE USER '$MARIADB_USERNAME'@'%' identified by 'root';"
  echo "CREATE USER '$MARIADB_USERNAME'@'%' identified by 'root';" | mariadb

  echo "[SQL]> GRANT all ON $MARIADB_DATABASE.* TO '$MARIADB_USERNAME'@'%';"
  echo "GRANT all ON $MARIADB_DATABASE.* TO '$MARIADB_USERNAME'@'%';" | mariadb

  echo "SET PASSWORD for '$MARIADB_USERNAME'@'%' = password('$MARIADB_PASSWORD');" | mariadb
  echo "[SQL]> SET PASSWORD for '$MARIADB_USERNAME'@'%' = password('**********');"
  unset MARIADB_PASSWORD

  kill $(pgrep 'mysqld')
fi

su -s /bin/bash -c "mysqld > /dev/null" mysql