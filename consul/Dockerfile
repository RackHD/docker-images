FROM alpine:3.4

ENV GLIBC_VERSION "2.23-r3"
ENV CONSUL_VERSION "0.7.0-test1"
ENV GLIBC_URL "https://github.com/sgerrand/alpine-pkg-glibc/releases/download"
ENV CONSUL_URL "https://releases.hashicorp.com/consul"

RUN apk add --no-cache bash grep
RUN apk --update add curl ca-certificates && \
    curl -Ls ${GLIBC_URL}/${GLIBC_VERSION}/glibc-${GLIBC_VERSION}.apk > /tmp/glibc-${GLIBC_VERSION}.apk && \
    apk add --allow-untrusted /tmp/glibc-${GLIBC_VERSION}.apk && rm -rf /tmp/glibc-${GLIBC_VERSION}.apk /var/cache/apk/*
ADD ${CONSUL_URL}/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip /tmp/consul.zip
RUN echo cd /bin && unzip /tmp/consul.zip && chmod +x /bin/consul && rm /tmp/consul.zip


ENTRYPOINT ["/bin/consul"]
