FROM prooph/php:7.3-zts

# Environmental Variables
ENV COMPOSER_HOME /root/composer
ENV COMPOSER_VERSION master

RUN apk add --no-cache --virtual .persistent-deps \
    git \
    unzip \
    openssh \
    libzip-dev

RUN set -xe \
    && docker-php-ext-install \
        zip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo

# Set up the application directory
VOLUME ["/var/www/composer"]
WORKDIR /var/www/composer

# Set up the command arguments
#ENTRYPOINT ["composer", "--ansi"]
#CMD ["-"]