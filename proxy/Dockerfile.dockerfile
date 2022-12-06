FROM nginx:latest
COPY index1.html /usr/share/nginx/html/index.html
COPY nginx-proxy.conf /etc/nginx/conf.d/default.conf