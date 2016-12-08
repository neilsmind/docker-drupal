# docker-drupal-base
Docker image source for Drupal base container. See [Docker Hub repository](https://hub.docker.com/r/neilsmind/drupal-base/) for more information. 

Presently this only supports Drupal 6 because I needed a way to support legacy installations and the 
default Drupal docker image doesn't go back past Drupal 7 and the default apache/php images don't include PHP 5.5 or
earlier which is required by Drupal 6.
