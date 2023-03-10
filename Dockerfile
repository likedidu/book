FROM debian:latest

WORKDIR /app

COPY . .

RUN apt-get update &&\
    apt-get install -y nginx wget &&\
    wget https://github.com/book-searcher-org/book-searcher/releases/download/0.9.0/book-searcher-x86_64-unknown-linux-gnu.tar.gz &&\
    tar zxvf book-searcher-x86_64-unknown-linux-gnu.tar.gz &&\
    chmod +x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
