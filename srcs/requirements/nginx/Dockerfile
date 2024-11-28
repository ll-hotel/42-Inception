FROM alpine:3.20.3

EXPOSE 443

RUN apk update;
RUN apk add nginx;

WORKDIR /etc/nginx
COPY conf/nginx.conf .

RUN mkdir ssl;
COPY conf/inception.key ssl/ssl.key
COPY conf/inception.crt ssl/ssl.crt

ENTRYPOINT ["nginx", "-g", "daemon off;"]
