#!/usr/bin/env bash
drush en -y commerce_migrate_ubercart --root=$(pwd)/web
drush cr --root=$(pwd)/web
PORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "3306/tcp") 0).HostPort}}' commerce-migrate-environment_mariadb_1)
drush migrate-upgrade --legacy-db-url=mysql://root:root@127.0.0.1:${PORT}/uc6_migrate --legacy-root=http://ck2migrate.com --root=$(pwd)/web