#!/usr/bin/env bash

php bin/console propel:model:build
php bin/console cache:clear --env=prod
php bin/console propel:sql:build
php bin/console propel:sql:insert --force
php bin/console jarves:install:demo demo.jarves.io /
php bin/console cache:warmup --env=prod
