FROM php:5.6

WORKDIR /app
RUN apt-get update && apt-get install -y git zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY composer.json /app
RUN composer install
COPY . /app
