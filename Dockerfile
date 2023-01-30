FROM ghcr.io/book-searcher-org/book-searcher:master

COPY . .

RUN apt install -y nginx 

ENTRYPOINT ["/entrypoint.sh"]