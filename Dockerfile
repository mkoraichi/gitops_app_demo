FROM nginx:1.25-alpine
COPY index.html /usr/share/nginx/html/index.html
RUN chmod 644 /usr/share/nginx/html/index.html \
    && adduser -u 1001 -D -S -G www-data www-data \
    && chown -R www-data:www-data /usr/share/nginx/html /var/cache/nginx /var/run/
USER 1001
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
