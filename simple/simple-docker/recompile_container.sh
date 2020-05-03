#!/bin/bash

CONTAINER_ID=$(docker build . | grep 'Successfully built' | awk '{print $3}')

docker run -p 127.0.0.1:3000:8080 "$CONTAINER_ID"
