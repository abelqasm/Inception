FROM debian:buster

RUN apt-get update && apt-get install -y \
        nginx \
        openssl

RUN openssl req -new -newkey rsa:2048 -nodes -keyout /etc/nginx/key.pem -x509 -days 365 -out /etc/nginx/cert.pem -subj "/CN=abelqasm.42.fr"

COPY /conf/nginx.conf /etc/nginx/conf.d

RUN chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]