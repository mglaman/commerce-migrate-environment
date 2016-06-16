#!/usr/bin/env bash

drush migrate-upgrade --legacy-db-url=mysql://root:root@mysql.dev:32783/ck2_migrate --legacy-root=http://ck2migrate.com --root=$(pwd)/web