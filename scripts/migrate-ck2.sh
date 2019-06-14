#!/usr/bin/env bash
$(pwd)/vendor/bin/drush en -y commerce_migrate_commerce --root=$(pwd)/web
$(pwd)/vendor/bin/drush cr --root=$(pwd)/web
PORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "3306/tcp") 0).HostPort}}' commerce-migrate-environment_mariadb_1)
$(pwd)/vendor/bin/drush migrate-upgrade --legacy-db-url=mysql://root:root@127.0.0.1:${PORT}/ck2_migrate --legacy-root=http://ck2migrate.com --root=$(pwd)/web