FROM ghcr.io/book-searcher-org/book-searcher:master

WORKDIR /app

COPY . .

RUN apt-get update &&\
    apt-get install -y nginx 

ENTRYPOINT ["/app/entrypoint.sh"]
