FROM php:8.2-fpm

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        git zip unzip libicu-dev libxml2-dev libzip-dev \
    && docker-php-ext-install intl pdo pdo_mysql zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
