#!/bin/bash
set -e

# Change ownership for apache happiness
chown -R www-data:www-data "${APACHE_DOCROOT}"

rm -f /var/run/apache2/apache2.pid

source /etc/apache2/envvars && exec /usr/sbin/apache2 -DFOREGROUND
