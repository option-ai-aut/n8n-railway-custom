FROM n8nio/n8n:latest

# als root installieren
USER root
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    fontconfig \
    ttf-dejavu

# Pfad für später im n8n-Command
ENV CHROME_BIN=/usr/bin/chromium

# zurück zu node-User
USER node
