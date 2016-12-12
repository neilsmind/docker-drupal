FROM php:5.5.38-apache

MAINTAINER Neil Giarratana <neil@neilsmind.com>

RUN a2enmod rewrite

# install the PHP extensions we need
RUN apt-get update && \
	  apt-get install -y \
			libpng12-dev \
			libjpeg-dev \
			rsync \
			openssh-client \
			mysql-client \
			git \
			zip \
	&& rm -rf /var/lib/apt/lists/*

RUN cd /tmp && curl -sS https://getcomposer.org/installer | \
		php && mv composer.phar /usr/local/bin/composer

ENV COMPOSER_HOME /composer
ENV PATH /composer/vendor/bin:$PATH
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN composer global require drush/drush

WORKDIR /var/www/html
