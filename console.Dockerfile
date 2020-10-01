ARG VERSION=7.3
ARG BASEOS=stretch
FROM my127/php:${VERSION}-fpm-${BASEOS}-console

# PHP: additional extensions
# --------------------------
RUN cd /root/installer; ./enable.sh \
  mysqli
