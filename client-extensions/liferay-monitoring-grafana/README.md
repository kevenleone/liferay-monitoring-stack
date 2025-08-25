# Liferay Monitoring Grafana

This client extension provides Grafana for the Liferay Monitoring Stack. Grafana is used to visualize metrics and logs collected by the OpenTelemetry Collector.

## Configuration

The Grafana instance is configured with the following settings:

- Root URL: `/monitor-grafana`
- Anonymous access enabled with Admin role
- Default admin credentials: admin/admin

## Usage

### Local Development

To build and run the Grafana container locally:

```bash
./build-and-run.sh
```

Then access Grafana at http://localhost:3000

### Deployment

When deployed as a client extension, Grafana will be available at the `/monitor-grafana` path of your Liferay instance.

## Data Sources

To visualize data from the monitoring stack, you'll need to configure the following data sources in Grafana:

1. **Jaeger** - For distributed tracing visualization
   - URL: http://monitorjaeger:16686

2. **Prometheus** (if configured) - For metrics visualization
   - URL: http://prometheus:9090

## Dashboards

You can create custom dashboards to visualize your application metrics and traces. Consider importing community dashboards for OpenTelemetry and Jaeger for a quick start.