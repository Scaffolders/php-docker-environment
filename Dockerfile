FROM php:8.0-apache

# Download some extensions and packages
RUN docker-php-ext-install mysqli bcmath  pdo pdo_mysql && docker-php-ext-enable mysqli
RUN docker-php-ext-enable pdo_mysql
RUN apt-get update && apt-get upgrade -y

# Download and nable xDebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Download and install Composer
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer
