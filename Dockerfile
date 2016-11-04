FROM alpine:3.3

# CLI
ENV VERSION 0.16.1

RUN apk --update add nodejs\<5 && npm install -g yarn@$VERSION && rm -rf /var/cache/apk/*

ENTRYPOINT [ "yarn" ]
