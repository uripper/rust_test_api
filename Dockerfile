FROM rust:latest

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080


RUN cargo install --path .

CMD ["cargo", "run"]
