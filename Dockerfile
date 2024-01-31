FROM nginx:1-alpine


COPY client server /usr/share/nginx/html/.well-known/matrix/ 
COPY client server /tmp

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]


