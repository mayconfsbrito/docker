FROM php:5.6-fpm

MAINTAINER Maycon Brito <mayconfsbrito@gmal.com>

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libssh2-1 \
        libssh2-1-dev \
        freetds-dev \
        libxml2-dev \
        libbz2-dev \
        libmhash-dev \
        libgearman-dev \
        libevent-dev \
        uuid-dev

RUN ln -sf /usr/lib/x86_64-linux-gnu/libsybdb.a /usr/lib/

RUN pecl install \
    xdebug-2.5.5 \
    ssh2-0.13 \
    mongodb-1.4.2 \
    gearman

RUN docker-php-ext-enable \
        ssh2 \
        mongodb \
        xdebug \
        gearman

RUN docker-php-ext-install -j$(nproc) \
        iconv \
    	json \
    	mbstring \
    	mcrypt \
    	mssql \
    	mysqli \
        mysql \
    	pdo \
    	pdo_dblib \
    	pdo_mysql \
    	zip \
        gd \
        soap \
        bcmath \
        bz2 \
        calendar \
        exif \
        gettext \
        shmop \
        sockets \
        sysvmsg \
        wddx \
        opcache \
        hash \
    && docker-php-ext-configure \
        gd

COPY php.ini /usr/local/etc/php/conf.d/php.ini

WORKDIR /var/www

EXPOSE 9000
