FROM gliderlabs/alpine:3.4
COPY supporting/reflex /usr/bin/
RUN mkdir -p /pipeline/output
WORKDIR /pipeline/output
ENTRYPOINT ["/usr/bin/reflex", "-s", "./main"]
