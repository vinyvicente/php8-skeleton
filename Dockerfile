FROM php:rc-fpm-alpine3.12

RUN apk add --update --no-cache \
    git \
    curl \
    libzip-dev \
    zip \
    && rm -rf /var/cache/apk/* \
    && docker-php-ext-install zip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

WORKDIR /app
