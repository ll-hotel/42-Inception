FROM alpine:3.20.3

RUN apk update;
RUN apk add php-fpm;

COPY conf/php-fpm.conf /etc/php83/

ENTRYPOINT ["php-fpm83"]
