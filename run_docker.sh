#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build --tag predictor:latest .

# List docker images
docker image ls

# Run flask app
docker run --name predictorApp -p 8000:80 predictor:latest
