#!/usr/bin/env bash
PORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "3306/tcp") 0).HostPort}}' commercemigrateenvironment_mariadb_1)
drush migrate-upgrade --legacy-db-url=mysql://root:root@mysql.dev:${PORT}/ck2_migrate --legacy-root=http://ck2migrate.com --root=$(pwd)/web