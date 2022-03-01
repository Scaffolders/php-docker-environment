FROM php:8.0-apache
RUN docker-php-ext-install mysqli bcmath  pdo pdo_mysql && docker-php-ext-enable mysqli
RUN docker-php-ext-enable pdo_mysql
RUN apt-get update && apt-get upgrade -y

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer