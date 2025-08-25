FROM jaegertracing/all-in-one:1.48

# Enable OTLP receivers and configure Jaeger
ENV COLLECTOR_OTLP_ENABLED=true \
    COLLECTOR_OTLP_GRPC_HOST_PORT=:4317 \
    COLLECTOR_OTLP_HTTP_HOST_PORT=:4318 \
    SPAN_STORAGE_TYPE=memory

# Expose ports

# 16686: Jaeger UI
# 4317: OTLP gRPC
# 4318: OTLP HTTP

EXPOSE 16686 4317 4318
