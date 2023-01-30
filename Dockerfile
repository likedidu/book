FROM ghcr.io/book-searcher-org/book-searcher:master

COPY . .

RUN apt-get update &&\
    apt-get install -y nginx 

ENTRYPOINT ["entrypoint.sh"]
