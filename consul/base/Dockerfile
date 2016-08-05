FROM alpine:3.4

ENV GLIBC_VERSION "2.23-r3"
ENV CONSUL_VERSION 0.6.4
ENV GLIBC_URL "https://github.com/sgerrand/alpine-pkg-glibc/releases/download"
ENV CONSUL_URL "https://releases.hashicorp.com/consul"
ENV CONSUL_SHA256 abdf0e1856292468e2c9971420d73b805e93888e006c76324ae39416edcf0627

RUN apk add --no-cache bash grep
RUN apk --update add curl ca-certificates && \
    curl -Ls ${GLIBC_URL}/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk > /tmp/glibc-${GLIBC_VERSION}.apk && \
    apk add --allow-untrusted /tmp/glibc-${GLIBC_VERSION}.apk && rm -rf /tmp/glibc-${GLIBC_VERSION}.apk /var/cache/apk/*
ADD ${CONSUL_URL}/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip /tmp/consul.zip
RUN echo "${CONSUL_SHA256}  /tmp/consul.zip" > /tmp/consul.sha256 \
  && sha256sum -c /tmp/consul.sha256 \
  && cd /bin \
  && unzip /tmp/consul.zip \
  && chmod +x /bin/consul \
  && rm /tmp/consul.zip

ENTRYPOINT ["/bin/consul"]
