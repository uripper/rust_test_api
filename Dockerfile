FROM rust:latest --memory=4g

WORKDIR /usr/src/app

COPY . .

RUN cargo install --path .

CMD ["cargo", "run"]
