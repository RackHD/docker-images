FROM golang:1.7.0-wheezy

ENV GLIDE_VERSION v0.11.1

RUN set -x \
    && apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
    && go get github.com/onsi/ginkgo/ginkgo \
    && go get github.com/onsi/gomega \
    && go get github.com/alecthomas/gometalinter \
    && go get github.com/mattn/goveralls \
    && go get github.com/modocache/gover \
    && go get golang.org/x/tools/cmd/cover \
    && gometalinter --install \
    && mkdir /tmp/glide \
    && wget -O /tmp/glide/glide.tar.gz "https://github.com/Masterminds/glide/releases/download/$GLIDE_VERSION/glide-$GLIDE_VERSION-linux-amd64.tar.gz" \
    && tar -xf /tmp/glide/glide.tar.gz -C /tmp/glide/ linux-amd64/glide \
    && cp /tmp/glide/linux-amd64/glide /go/bin/ \
    && chmod +x /go/bin/glide \
    && rm -rf /tmp/glide/ \
    && apt-get purge -y --auto-remove wget \
    && rm -rf /var/lib/{apt,dpkg,cache,log}
