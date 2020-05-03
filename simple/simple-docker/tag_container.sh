#!/bin/bash

CONTAINER=$(docker images | grep 'bitops/simple-http' | awk '{print $3}')
docker tag "$CONTAINER" bitops/simple-http
