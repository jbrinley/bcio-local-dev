#!/usr/bin/env bash
# Executes the artisan queue command in the php-fpm container
# add the flag --queue=<name> to limit to the specified queue

SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "$SCRIPTDIR";

./artisan.sh queue:work redis --tries=1 --timeout=600 --memory=1000 "$@"
