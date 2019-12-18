#!/usr/bin/env bash
# Executes artisan in the php-fpm container

SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "$SCRIPTDIR";

PROJECT_ID=$(cat ./.projectID)

DEBUG_FLAGS='-dxdebug.remote_autostart=1 -dxdebug.remote_host=host.tribe -dxdebug.remote_enable=1'
ARTISAN_COMMAND="PHP_IDE_CONFIG=\"serverName=${PROJECT_ID}.tribe\" php ${DEBUG_FLAGS} /application/www/artisan $@"

./exec.sh bash -c "${ARTISAN_COMMAND}"
