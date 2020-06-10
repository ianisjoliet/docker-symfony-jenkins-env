ARG PHP_VERSION=""
FROM php:${PHP_VERSION:+${PHP_VERSION}-}fpm-alpine

RUN apk update; \
    apk upgrade; \
    apk add --no-cache git; \
    apk add --no-cache rabbitmq-c-dev; \
    apk add --no-cache librabbitmq; \
    apk add --no-cache $PHPIZE_DEPS; # nécéssaire pour les pecl install xdebug et pecl install amqp utilisés plus bas

RUN docker-php-ext-install pcntl
RUN docker-php-ext-install pdo_mysql
RUN pecl install amqp
RUN docker-php-ext-enable amqp
RUN docker-php-ext-install opcache

COPY ./docker_symfony /var/www/html/
WORKDIR /var/www/html/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN COMPOSER_PROCESS_TIMEOUT=9999 composer install

CMD ["php-fpm"]