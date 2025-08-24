#!/bin/bash

# Build the Docker image
docker build -t liferay/jaeger:latest .

# Run Jaeger
docker run -p 16686:16686 -p 4317:4317 -p 4318:4318 liferay/jaeger:latest