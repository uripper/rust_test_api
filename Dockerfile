FROM rust:1.59

WORKDIR /usr/src/app

COPY . .

RUN cargo install --path . --target x86_64-unknown-linux-musl

CMD ["cargo", "run"]
