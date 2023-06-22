FROM ubuntu:22.04
# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive
# Update Ubuntu Software repository
RUN apt update
# Install nginx, php-fpm and supervisord from ubuntu repository
RUN apt install -y nginx php-fpm supervisor
RUN rm -rf /var/lib/apt/lists/*
RUN apt clean
ADD ./DockerDemo /var/www/html/DockerDemo
EXPOSE 80 443
