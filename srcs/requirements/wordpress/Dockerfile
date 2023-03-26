FROM debian:buster

RUN apt-get update && apt-get install -y \
    mariadb-client \
    php7.3 \
    php7.3-cli \
    php7.3-mysql \
    php7.3-curl \
    php7.3-gd \
    php7.3-mbstring \
    php7.3-xml \
    php7.3-fpm \
    curl


RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir /var/www && wp core download --path=/var/www/html --allow-root

COPY tools/config.sh .

RUN chmod +x config.sh

CMD [ "./config.sh" ]