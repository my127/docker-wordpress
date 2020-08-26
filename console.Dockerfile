ARG VERSION=7.3
FROM my127/php:${VERSION}-fpm-stretch-console

RUN apt-get update -qq \
 && DEBIAN_FRONTEND=noninteractive apt-get -qq -y --no-install-recommends install \
  # package dependencies \
   less \
  # clean \
 && apt-get auto-remove -qq -y \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# PHP: additional extensions
# --------------------------
RUN cd /root/installer; ./enable.sh \
  mysqli
