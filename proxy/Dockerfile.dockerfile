FROM nginx:latest 
RUN mkdir /usr/share/nginx/asa
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf