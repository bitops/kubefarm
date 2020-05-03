#!/bin/bash

docker build . | grep 'Successfully built' | awk '{print $3}' > docker_id.txt
