# Jaeger for Liferay

This directory contains the configuration for Jaeger, a distributed tracing system that can be used to monitor and troubleshoot Liferay applications.

## Overview

Jaeger is an open-source, end-to-end distributed tracing system that helps monitor and troubleshoot complex distributed systems. It is designed to work with OpenTelemetry and can receive trace data from the OpenTelemetry collector.

## Configuration

The Jaeger instance is configured to:

- Receive OTLP data from the OpenTelemetry collector
- Store traces in memory (for development and testing purposes)
- Expose the Jaeger UI at the `/monitor-jaeger` path

## Building the Docker Image

To build the Docker image:

```bash
docker build -t liferay/jaeger:latest .
```

## Running Jaeger

To run Jaeger:

```bash
docker run -p 16686:16686 -p 4317:4317 -p 4318:4318 -p 3333:3333 liferay/jaeger:latest
```

## Connecting to OpenTelemetry Collector

This Jaeger instance is designed to work with the OpenTelemetry collector in the `monitor-otel-collector` directory. The OpenTelemetry collector should be configured to export traces to Jaeger.

To connect the OpenTelemetry collector to Jaeger, update the `otel-collector-config.yaml` file in the `monitor-otel-collector` directory to include a Jaeger exporter:

```yaml
exporters:
  jaeger:
    endpoint: jaeger:14250
    tls:
      insecure: true
```

And add `jaeger` to the list of exporters in the traces pipeline:

```yaml
service:
  pipelines:
    traces:
      receivers: [otlp]
      processors: [memory_limiter, batch]
      exporters: [otlp, jaeger, logging]
```

## Accessing the Jaeger UI

Once Jaeger is running, you can access the UI at:

```
http://localhost:16686/monitor-jaeger
```
