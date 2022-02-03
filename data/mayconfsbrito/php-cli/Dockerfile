FROM php:7.1-cli

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

#COPY php.ini /usr/local/etc/php/

RUN cd /usr/lib/ \
	&& wget https://phar.phpunit.de/phpunit.phar

RUN mv /usr/lib/phpunit.phar /usr/local/bin/phpunit \
	&& chmod +x /usr/local/bin/phpunit \
	&& phpunit --version