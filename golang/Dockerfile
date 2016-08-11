FROM golang:1.7rc6-wheezy

ENV GOSU_VERSION 1.9
ENV GLIDE_VERSION v0.11.1

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN set -x \
    && apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \
    && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" \
    && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" \
    && chmod +x /usr/local/bin/gosu \
    && gosu nobody true \
    && go get github.com/onsi/ginkgo/ginkgo \
    && go get github.com/onsi/gomega \
    && go get github.com/alecthomas/gometalinter \
    && gometalinter --install \
    && mkdir /tmp/glide \
    && wget -O /tmp/glide/glide.tar.gz "https://github.com/Masterminds/glide/releases/download/$GLIDE_VERSION/glide-$GLIDE_VERSION-linux-amd64.tar.gz" \
    && tar -xf /tmp/glide/glide.tar.gz -C /tmp/glide/ linux-amd64/glide \
    && cp /tmp/glide/linux-amd64/glide /go/bin/ \
    && chmod +x /go/bin/glide \
    && rm -rf /tmp/glide/ \
    && apt-get purge -y --auto-remove wget \
    && apt-get clean \
    && rm -rf /var/lib/apt \
    && chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
