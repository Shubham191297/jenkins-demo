#!/bin/bash

/usr/sbin/sshd

mkdir -p /run/php-fpm && /usr/sbin/php-fpm -c /etc/php/fpm

nginx -g 'daemon off;'
