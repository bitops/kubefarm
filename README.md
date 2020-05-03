# kubefarm

Simple container to run on Kubernetes

## How to use

This repository tries to keep things intentionally simple. The idea is very basic: you want to learn how to make a simple Docker container and then deploy it as a Pod on Kubernetes.

You can look in the `simple-docker` repository to get an understanding of how the container itself is built. The application inside the container is a single-file ruby web app with no bells or whistles.

You can then look in the `simple-pod` repository to see a minimal Pod manifest that gets the container up and running on Kubernetes.

Both directories contain shell scripts with the necessary commands to get everything working.

## Prerequisites

You'll have to have Docker installed as well as Kubernetes. The scripts in the repo assume you have `minikube` installed.
