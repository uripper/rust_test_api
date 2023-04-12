FROM rust:1.59

WORKDIR /usr/src/app

COPY . .

RUN cargo install --path .

CMD ["cargo", "run"]
