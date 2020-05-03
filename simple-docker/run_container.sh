#!/bin/bash

if [ ! -f docker_id.txt ]; then
  echo "You need to run ./build_container.sh before running this script."
  exit 1
fi

CONTAINER_ID=$(cat docker_id.txt)

docker run -p 127.0.0.1:3000:8080 "$CONTAINER_ID"
