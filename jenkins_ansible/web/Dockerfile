FROM remote-host

# COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo 

RUN yum -y install nginx php-fpm php-mysqlnd

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chown remote_user:remote_user /var/www/html

RUN chmod +x /start.sh

CMD /start.sh
