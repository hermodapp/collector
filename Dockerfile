# FROM otel/opentelemetry-collector
# COPY config.yaml /config.yaml
# ENTRYPOINT ["/otelcol"]
# CMD ["--config" "/config.yaml"]
FROM otel/opentelemetry-collector

COPY config.yaml /config.yaml
ENTRYPOINT ["/otelcol", "--config", "/config.yaml"]
EXPOSE 4317 4318 55680 55679

# Build command is 
#  docker run -e HONEYCOMB_API_KEY="${HONEYCOMB_API_KEY}" -p 4317:4317 -p 4318:4318 russweas/collector