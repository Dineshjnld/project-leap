#! /usr/bin/env sh
set -e

export NUM_WORKERS=1
export SERVER_PORT=8500
export TIMEOUT=3000

exec gunicorn main:app --workers "$NUM_WORKERS" --worker-class uvicorn.workers.UvicornWorker --bind 172.23.108.203:"$SERVER_PORT" --timeout "$TIMEOUT"