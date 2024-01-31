#!/bin/sh



sed -i "s/matrix-server/${MATRIX_SERVER_NAME}/g" /tmp/*
sed -i "s/identity-server/${IDENTITY_SERVER_NAME}/g" /tmp/*


mv /tmp/client /tmp/server /usr/share/nginx/html/.well-known/matrix/ 


nginx -g "daemon off;"

