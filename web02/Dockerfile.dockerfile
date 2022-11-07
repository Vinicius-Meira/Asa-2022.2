FROM nginx:latest 
COPY index1.html /usr/share/nginx/html/index.html
RUN mkdir /usr/share/nginx/asa
COPY index2.html /usr/share/nginx/asa/index.html
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf