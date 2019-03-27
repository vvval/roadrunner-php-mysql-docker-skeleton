FROM php:7.3-zts

RUN apt-get update && apt-get install -y --no-install-recommends \
  vim \
  nano \
  libzip-dev \
  unzip

# Install PHP Extensions
RUN docker-php-ext-install zip opcache
RUN docker-php-ext-enable opcache

WORKDIR /var/www/app