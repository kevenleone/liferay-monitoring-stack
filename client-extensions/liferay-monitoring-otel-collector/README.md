# OpenTelemetry Collector for Liferay Marketplace

This directory contains the configuration for an OpenTelemetry collector that can be used to collect telemetry data from Liferay Marketplace applications.

## Overview

The OpenTelemetry Collector is a component of the OpenTelemetry project that receives, processes, and exports telemetry data. It is designed to be deployed as a standalone service or as a sidecar to your application.

## Configuration

The collector is configured using the `otel-collector-config.yaml` file, which defines:

- **Receivers**: Components that receive telemetry data (OTLP over gRPC and HTTP, Prometheus)
- **Processors**: Components that process telemetry data (batching, memory limiting)
- **Exporters**: Components that export telemetry data (OTLP, Prometheus, logging)
- **Extensions**: Additional components for monitoring and debugging
- **Service**: Definition of the pipelines that connect receivers, processors, and exporters

## Building the Docker Image

To build the Docker image:

```bash
docker build -t liferay/otel-collector:latest .
```

## Running the Collector

To run the collector:

```bash
docker run -p 4317:4317 -p 4318:4318 -p 13133:13133 -e OTLP_ENDPOINT=your-otlp-endpoint:4317 liferay/otel-collector:latest
```

## Exposed Ports

- **4317**: OTLP gRPC receiver
- **4318**: OTLP HTTP receiver
- **8888**: Prometheus metrics scraping endpoint
- **8889**: Prometheus exporter
- **13133**: Health check extension

## Environment Variables

- **OTLP_ENDPOINT**: The endpoint of the OTLP receiver to export telemetry data to.