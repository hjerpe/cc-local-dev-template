#!/bin/bash
# stop on error
set -e

source docker-name.sh

# Build the base image
docker build -f Dockerfile.base -t hjerpe/python-base:latest .

# Build the project-specific image
docker build --build-arg BASE_IMAGE=hjerpe/python-base:latest -f Dockerfile -t "$image_name" .
