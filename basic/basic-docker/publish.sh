#!/bin/bash

VERSION=$(cat version.txt)
NAME_AND_VERSION="bitops/basic-http-pod:$VERSION"
docker build -t "$NAME_AND_VERSION" .
docker push "$NAME_AND_VERSION"
