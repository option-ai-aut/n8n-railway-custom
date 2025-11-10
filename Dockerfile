FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
  chromium \
  fonts-liberation fonts-noto-color-emoji \
  libasound2 libatk1.0-0 libatspi2.0-0 libdrm2 libgbm1 \
  libgtk-3-0 libnspr4 libnss3 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 \
  libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 \
  libxshmfence1 libxss1 libxtst6 xdg-utils ca-certificates \
  && rm -rf /var/lib/apt/lists/*
ENV CHROME_BIN=/usr/bin/chromium
USER node
