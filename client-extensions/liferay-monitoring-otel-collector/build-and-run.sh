#!/bin/bash

# Build the Docker image
docker build -t liferay/otel-collector:latest .

# Run the collector
docker run -p 4317:4317 -p 4318:4318 --env-file .env liferay/otel-collector:latest