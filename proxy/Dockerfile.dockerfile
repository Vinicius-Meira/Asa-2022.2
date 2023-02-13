FROM nginx:latest
#COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/gninx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf