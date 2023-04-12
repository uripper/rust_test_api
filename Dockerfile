FROM rust:1.59

WORKDIR /usr/src/app

COPY . .
ENV RUSTFLAGS="-C target-cpu=native -C target-feature=+crt-static -C link-arg=-fuse-ld=gold -C link-arg=-Wl,-O1 -C link-arg=-Wl,-Bsymbolic-functions -C link-arg=-Wl,--as-needed -C link-arg=-Wl,--no-copy-dt-needed-entries -C opt-level=2 -C debuginfo=0 -C debug-assertions=off -C codegen-units=1 -C incremental=no -C prefer-dynamic=no -C inline-threshold=100 -C link-dead-code -C link-args=-s"

RUN cargo install --path .

CMD ["cargo", "run"]
