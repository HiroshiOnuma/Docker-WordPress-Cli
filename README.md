# Docker-WordPress-Cli
This is a method to set up a WordPress environment using docker-compose.

## Overview
Dockerfile installs WP_CLI, and you can build a WordPress environment with the settings configured in wp-install.sh (installation, various settings, themes, plugins, etc.).
The issue of the default upload limit size for WordPress being set to 2MB is resolved by configuring the upload size and other settings in the local php.ini file and copying those settings to /usr/local/etc/php/php.ini inside the container.

## Prerequisites
- Docker is installed and running
- Docker Compose is installed

## Start the services
`docker-compose up -d`

## WordPress Installation and Initial Setup (Execute wp-install.sh)
`docker exec wp /tmp/wp-install.sh`  <!-- wp refers to the container_name -->

## Pause the services
`docker-compose stop`

## Stop the services and remove the containers
`docker-compose down`

## Stop the services and remove the containers (including associated volumes)
`docker-compose down --volumes`


