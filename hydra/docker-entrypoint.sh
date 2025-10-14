#!/bin/sh
set -e

# Run migrations
hydra migrate sql up --read-from-env --yes

# Start Hydra server
exec hydra serve -c /etc/config/hydra/hydra.yml all 

