#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=kipsang01/ml-microservice-predictor
 
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag predictor:latest $dockerpath
docker images
# Push image to a docker repository
docker push $dockerpath

