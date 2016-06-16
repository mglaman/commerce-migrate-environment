# Commerce Migrate Environment

This provides an environment to work on Commerce Migrate 2.x.

## Requirements

* You must have Docker and Docker Compose. This is written assuming you have Linux (native) or the Mac/Windows betas.
* Composer

## Get Started

```
# Run composer install, docker-compose up, etc.
./scripts/setup.sh

# Pick a migration (migrate-ck2.sh or migrate-uc6.sh)
./scripts/migrate-ck2.sh

# Need to restart?
./scripts/setup.sh
```

The `setup.sh` script kills containers and rebuilds them and resets your environment.

Inside of `db-seeds` are the sample migration database dumps used my the unit tests for the module. This environment
provides a way to test an actual, visual, migration.