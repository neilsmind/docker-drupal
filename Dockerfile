FROM nimmis/apache-php5

MAINTAINER Neil Giarratana <neil@neilsmind.com>

# install the PHP extensions we need
RUN apt-get update && \
	  apt-get install -y \
			libpng12-dev \
			libjpeg-dev \
			rsync \
			openssh-client \
	&& rm -rf /var/lib/apt/lists/*

ENV COMPOSER_HOME /composer
ENV PATH /composer/vendor/bin:$PATH
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN composer global require drush/drush

WORKDIR /var/www/html
