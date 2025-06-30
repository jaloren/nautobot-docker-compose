#!/usr/bin/env bash

set -u
set -o pipefail

export PYTHON_VER=3.10
export NAUTOBOT_VERSION=${NAUTOBOT_VERSION:-2.4.10}

CMD=(docker compose)
CMD+=(-f docker-compose.postgres.yml)
CMD+=(-f docker-compose.base.yml)
CMD+=(-f docker-compose.local.yml)
CMD+=($@)

echo "Executing: ${CMD[*]}"
"${CMD[@]}"
