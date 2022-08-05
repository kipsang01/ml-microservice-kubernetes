#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Docker ID/path
dockerpath=kipsang01/ml-microservice-predictor

# Run the Docker Hub container with kubernetes
kubectl run predictor --image=$dockerpath --port=80 --labels app=ml-microservice-predictor

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward predictor --address 0.0.0.0 8000:80

