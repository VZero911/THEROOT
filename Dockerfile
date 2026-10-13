FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir aiohttp

WORKDIR /app
COPY pandora_master.py .
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

EXPOSE 7783

ENV PANDORA_PORT=7783
ENV HQ_HOST=host.docker.internal
ENV HQ_PORT=7777

HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
    CMD curl -f http://localhost:7783/health || exit 1

ENTRYPOINT ["./entrypoint.sh"]
