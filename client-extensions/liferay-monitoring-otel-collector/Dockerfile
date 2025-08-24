# otel-collector/Dockerfile
FROM otel/opentelemetry-collector:latest

COPY otel-collector-config.yaml /etc/otel-collector-config.yaml

CMD ["--config=/etc/otel-collector-config.yaml"]

EXPOSE 4317 4318 13133
