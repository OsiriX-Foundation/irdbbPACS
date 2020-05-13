#!/bin/sh

KHEOPS_TOKEN=$(cat ${KHEOPS_TOKEN_FILE:?KHEOPS_TOKEN_FILE has not been set})
sed -i "s|\${kheops_token}|$KHEOPS_TOKEN|g" /etc/nginx/nginx.conf

nginx -g 'daemon off;'