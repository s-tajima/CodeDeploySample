#!/bin/bash

mkdir -p /srv/

service nginx stop
rm -rf /etc/nginx
