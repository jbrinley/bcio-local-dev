FROM phpdockerio/php73-fpm:latest
WORKDIR "/application"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    php-memcached \
    php7.3-mysql \
    php-redis \
    php7.3-sqlite3 \
    php-xdebug \
    php7.3-bcmath \
    php7.3-bz2 \
    php7.3-gd \
    php-igbinary \
    php-imagick \
    php7.3-imap \
    php7.3-intl \
    php7.3-soap \
    php-ssh2 \
    php-yaml \
    git \
    ssmtp \
    mysql-client \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

