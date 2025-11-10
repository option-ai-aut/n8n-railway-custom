# Grundlage: offizielles n8n-Image
FROM n8nio/n8n:latest

# als root arbeiten, um Pakete zu installieren
USER root

# wkhtmltopdf + Fonts installieren
RUN apt-get update && apt-get install -y --no-install-recommends \
    wkhtmltopdf \
    fonts-dejavu \
    fonts-liberation \
    fonts-noto \
  && rm -rf /var/lib/apt/lists/*

# wieder zum Standardbenutzer wechseln
USER node
