FROM nimmis/apache-php5

MAINTAINER Neil Giarratana <neil@neilsmind.com>

# install the PHP extensions we need
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev drush rsync \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html
