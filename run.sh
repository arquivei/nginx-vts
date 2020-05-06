#!/bin/sh

echo "Starting VTS exporter from 11050"
nohup /usr/bin/nginx-vts-exporter -nginx.scrape_uri=http://127.0.0.1:11050/status &
echo "Starting Nginx"
nginx -g "daemon off;"
