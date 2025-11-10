# Dockerfile
FROM n8nio/n8n:alpine

USER root
RUN apk add --no-cache \
  chromium nss freetype harfbuzz ttf-freefont ttf-liberation

ENV CHROME_BIN=/usr/bin/chromium
USER node

