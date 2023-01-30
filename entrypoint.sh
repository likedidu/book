#!/bin/bash

/book-searcher index -f *.csv
/book-searcher run -b '0.0.0.0:7070' &

cp /app/nginx.conf /etc/nginx/conf.d/server.conf 

rm -rf /etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
