FROM grafana/grafana:latest

# Set Grafana configuration
ENV GF_SERVER_ROOT_URL=/monitor-grafana \
    GF_SERVER_SERVE_FROM_SUB_PATH=true \
    GF_AUTH_ANONYMOUS_ENABLED=true \
    GF_AUTH_ANONYMOUS_ORG_ROLE=Admin \
    GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin

# Copy provisioning files
COPY ./provisioning /etc/grafana/provisioning

# Copy dashboards
COPY ./dashboards /var/lib/grafana/dashboards

# Expose Grafana port
EXPOSE 3000