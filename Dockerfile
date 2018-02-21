FROM alpine:3.7

# CLI
ENV VERSION 1.3.2-r0

RUN apk --update add yarn=$VERSION && rm -rf /var/cache/apk/*

ENTRYPOINT [ "yarn" ]
