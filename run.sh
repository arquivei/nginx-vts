#!/bin/sh

echo "Starting VTS exporter from $VTS_PORT"
nohup /usr/bin/nginx-vts-exporter -nginx.scrape_uri=http://127.0.0.1:$VTS_PORT/status &
echo "Starting Nginx"
nginx -g "daemon off;"
