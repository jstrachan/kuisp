FROM gliderlabs/alpine:3.1
MAINTAINER Jimmi Dyson <jimmidyson@gmail.com>

ENV VERSION 0.12

RUN apk-install ca-certificates curl tar && \
    curl -L https://github.com/jimmidyson/kuisp/releases/download/v${VERSION}/kuisp-${VERSION}-linux-amd64.tar.gz | \
      tar xzv && \
    apk del curl tar

ENTRYPOINT ["/kuisp"]
