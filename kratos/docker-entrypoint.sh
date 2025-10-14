#!/bin/sh
set -e

# Run migrations
kratos migrate sql -e -y

# Start Hydra server
exec kratos serve -c /etc/config/kratos/kratos.yml --watch-courier
