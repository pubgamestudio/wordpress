FROM wordpress:php8.3-apache

RUN apt-get update \
    && apt-get install -y --no-install-recommends magic-wormhole \
    && rm -rf /var/lib/apt/lists/*

RUN usermod -s /bin/bash www-data

RUN printf "upload_max_filesize=64M\npost_max_size=64M\nmemory_limit=256M\nmax_execution_time=300\n" \
    > /usr/local/etc/php/conf.d/uploads.ini
