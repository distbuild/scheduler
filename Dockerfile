FROM rust:latest AS builder
WORKDIR /usr/src/scheduler
COPY . .
RUN make install && \
    make build

FROM gcr.io/distroless/base-debian11
COPY --from=builder /usr/src/scheduler/target/release/scheduler /usr/local/bin/scheduler
USER nonroot:nonroot
ENTRYPOINT ["scheduler"]
