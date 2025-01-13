#!/bin/sh
# Replace the PROXY_PASS placeholder with the environment variable value
sed -i "s|PROXY_PASS|${PROXY_PASS}|g" /etc/nginx/conf.d/default.conf

# Start Nginx
exec "$@"