#!/bin/bash

helm repo add concourse https://concourse-charts.storage.googleapis.com/
helm install concourse/concourse --generate-name
