# Alpine-Basis (hat apk statt apt)
FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache \
    wkhtmltopdf \
    fontconfig \
    ttf-dejavu \
    ttf-liberation \
    noto-fonts

USER node
