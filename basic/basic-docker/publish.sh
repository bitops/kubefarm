#!/bin/bash

docker tag "$$(docker images | grep 'bitops/basic-http-pod' | awk '{print $$3}')" bitops/basic-http-pod
docker push bitops/basic-http-pod
