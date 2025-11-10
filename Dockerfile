FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN apk add --no-cache \
  chromium nss freetype harfbuzz ttf-freefont ttf-liberation

ENV CHROME_BIN=/usr/bin/chromium
USER node
