#!/bin/bash

fly -t ci set-pipeline -p maven-cf-simple -c pipeline.yml
