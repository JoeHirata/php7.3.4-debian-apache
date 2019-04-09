FROM php:7.3.4-apache
MAINTAINER xxjoexx

ENV APP_ROOT /var/www

WORKDIR $APP_ROOT

RUN docker-php-ext-install pdo_mysql mysqli
RUN a2enmod vhost_alias && a2enmod rewrite && service apache2 restart

EXPOSE 8080 80
