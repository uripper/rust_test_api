FROM rust:1.70.0-nightly

WORKDIR /usr/src/app

COPY . .

RUN cargo install --path . --target x86_64-unknown-linux-musl

CMD ["cargo", "run"]
