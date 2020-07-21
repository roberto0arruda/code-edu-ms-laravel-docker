FROM php:7.4.7-fpm-alpine3.12

LABEL maintainer="Roberto Arruda <robero0arruda@hotmail.com>"

RUN apk --no-cache update \
    && apk --no-cache upgrade \
    && apk add bash && apk add git

RUN docker-php-ext-install mysqli && \
    docker-php-ext-install pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www
RUN rm -rf /var/www/html

RUN ln -s public html

EXPOSE 9000
ENTRYPOINT [ "php-fpm" ]