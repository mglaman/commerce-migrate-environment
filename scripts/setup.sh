#!/usr/bin/env bash

docker-compose kill && docker-compose rm -f
docker-compose up -d

echo "Sleeping to allow seeds to import."
sleep 10

drush si -y --root=$(pwd)/web
drush en -y commerce_migrate migrate_plus migrate_tools migrate_upgrade --root=$(pwd)/web

echo "Now run ./scripts/migrate-ck2.sh or ./scripts/migrate-uc6.sh"