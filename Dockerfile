FROM alpine:3.11

ARG AKAMAI_PURGE_VERSION=1.0.1

RUN apk add curl && \
    curl -L https://github.com/akamai/cli-purge/releases/download/${AKAMAI_PURGE_VERSION}/akamai-purge-${AKAMAI_PURGE_VERSION}-linuxamd64 \
        -o /usr/bin/akamai-purge && \
    chmod +x /usr/bin/akamai-purge
