#!/bin/bash

fly -t ci set-pipeline -p kubefarm -c pipeline.yml
