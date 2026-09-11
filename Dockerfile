FROM nginx:alpine
LABEL description="Lab 0 - Docker fundamentals"
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s CMD wget --spider -q http://localhost/ || exit 1
