#!/bin/sh

exec docker run -d \
    --name nginx \
    -p 80:80 \
    egustafson/nginx
