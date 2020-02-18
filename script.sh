KHEOPS_TOKEN=$(cat /run/secrets/kheops_token)
sed -i "s|\${kheops_token}|$KHEOPS_TOKEN|g" /etc/nginx/nginx.conf

nginx -g 'daemon off;'