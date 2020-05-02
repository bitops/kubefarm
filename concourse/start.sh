#!/bin/bash

export POD_NAME=$(kubectl get pods --namespace default -l "app=concourse-1588378558-web" -o jsonpath="{.items[0].metadata.name}")
echo "Visit http://127.0.0.1:8080 to use Concourse"
kubectl port-forward --namespace default $POD_NAME 8080:8080
