#!/bin/bash

# Build the Docker image
docker build -t liferay/grafana:latest .

# Run Grafana
docker run -p 3434:3000 liferay/grafana:latest