# Debian-Basis -> apt-get ist vorhanden
FROM n8nio/n8n:latest-debian

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    wkhtmltopdf \
    fonts-dejavu \
    fonts-liberation \
    fonts-noto \
  && rm -rf /var/lib/apt/lists/*

USER node

