FROM golang:1.7.1-wheezy

ENV GLIDE_VERSION v0.11.1
ENV PROTOC_VERSION 3.0.2

RUN set -x \
    && apt-get update && apt-get install -y --no-install-recommends ca-certificates wget unzip libpcap-dev && rm -rf /var/lib/apt/lists/* \
    && go get github.com/onsi/ginkgo/ginkgo \
    && go get github.com/onsi/gomega \
    && go get github.com/alecthomas/gometalinter \
    && go get github.com/mattn/goveralls \
    && go get github.com/modocache/gover \
    && go get golang.org/x/tools/cmd/cover \
    && gometalinter --install \
    && mkdir /tmp/glide \
    && wget -O /tmp/glide/glide.tar.gz "https://github.com/Masterminds/glide/releases/download/$GLIDE_VERSION/glide-$GLIDE_VERSION-linux-amd64.tar.gz" \
    && tar -xf /tmp/glide/glide.tar.gz -C /tmp/glide/ linux-amd64/glide \
    && cp /tmp/glide/linux-amd64/glide /go/bin/ \
    && chmod +x /go/bin/glide \
    && rm -rf /tmp/glide/ \
    && mkdir /tmp/protoc \
    && wget -O /tmp/protoc.zip "https://github.com/google/protobuf/releases/download/v$PROTOC_VERSION/protoc-$PROTOC_VERSION-linux-x86_64.zip" \
    && unzip /tmp/protoc.zip -d /tmp/protoc \
    && cp /tmp/protoc/bin/protoc /go/bin/ \
    && rm -rf /tmp/protoc/ protoc.zip \
    && go get -u github.com/golang/protobuf/protoc-gen-go \
    && go get -u github.com/golang/protobuf/proto \
    && apt-get purge -y --auto-remove wget unzip \
    && rm -rf /var/lib/{apt,dpkg,cache,log}
