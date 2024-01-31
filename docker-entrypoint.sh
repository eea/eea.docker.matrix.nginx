#!/bin/sh




sed -i "s|https://matrix-server|${MATRIX_URL%/}|g" /tmp/*
sed -i "s|https://identity-server|${MATRIX_IDENTITY_URL%/}|g" /tmp/*


mv /tmp/client /tmp/server /usr/share/nginx/html/.well-known/matrix/ 


nginx -g "daemon off;"

