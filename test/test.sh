#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

cd ..

for distribution in ubuntu:18.04 debian:9; do
    docker build --build-arg distribution="$distribution" -f test/Dockerfile .
done