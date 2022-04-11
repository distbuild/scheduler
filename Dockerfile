FROM rust:latest AS builder
WORKDIR /usr/src/scheduler
COPY . .
RUN make install && \
    make build

FROM scratch
COPY --from=builder /usr/src/scheduler/target/release/scheduler /usr/local/bin/scheduler
ENTRYPOINT ["scheduler"]
