FROM debian:buster

RUN apt-get update && apt-get install -y nginx

COPY /conf/nginx.conf /etc/nginx

RUN chown -R www-data:www-data /var/www/html


CMD ["nginx", "-g", "daemon off;"]