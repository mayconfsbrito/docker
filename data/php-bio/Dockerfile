# https://github.com/docker-library/php/tree/bfe27759103fa6050601060165409b5b3be06395
FROM php:7.0-fpm
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libssh2-1 \
        libssh2-1-dev \
        freetds-dev \
        wget

RUN ln -sf /usr/lib/x86_64-linux-gnu/libsybdb.a /usr/lib/

RUN pecl install ssh2-1.0 \
	&& pecl install xdebug-2.5.1 \
	&& docker-php-ext-enable xdebug

RUN docker-php-ext-install -j$(nproc) iconv \
    	json \
    	mbstring \
    	mcrypt \
    	mysqli \
    	pdo \
    	pdo_dblib \
    	pdo_mysql \
    	zip \
    && docker-php-ext-configure gd \
    	--with-freetype-dir=/usr/include/ \
    	--with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

COPY php.ini /usr/local/etc/php/

#RUN cd /usr/lib/ \
#	&& wget https://phar.phpunit.de/phpunit.phar
#
#RUN mv /usr/lib/phpunit.phar /usr/local/bin/phpunit \
#	&& chmod +x /usr/local/bin/phpunit \
#	&& phpunit --version

