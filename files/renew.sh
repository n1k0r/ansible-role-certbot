#!/usr/bin/env bash

# crontab -e
# 0 4 * * * /bin/bash /srv/certbot/renew.sh > /dev/null 2>&1

cd "$(dirname "$0")"
docker-compose run --rm certbot renew
