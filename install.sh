#!/bin/sh

DIR=/tmp/nginx
NGINX_USER=centos

yum install wget git python python-devel openssl openssl-devel zlib pcre

pushd $DIR

wget http://nginx.org/download/nginx-1.9.5.tar.gz
tar zxvf nginx-1.9.5.tar.gz

git clone -b 2.2 https://github.com/vkholodkov/nginx-upload-module

cd nginx-1.9.5

git clone -b 2.2 https://github.com/vkholodkov/nginx-upload-module

cd nginx-1.9.5

./configure \
--add-module=../nginx-upload-module \
--prefix=/usr/local/nginx \
--with-http_stub_status_module \
--with-http_ssl_module \
--with-http_gzip_static_module \
--user=$NGINX_USER --group=$NGINX_USER


