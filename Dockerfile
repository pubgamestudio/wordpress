FROM wordpress:php8.3-apache

RUN apt-get update \
    && apt-get install -y --no-install-recommends magic-wormhole \
    && rm -rf /var/lib/apt/lists/*

RUN usermod -s /bin/bash www-data

# Keep the standard WordPress entrypoint.
# Do not switch to www-data before initialization.
