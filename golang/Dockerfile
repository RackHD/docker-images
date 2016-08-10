FROM golang:1.7rc6-wheezy

RUN go get github.com/onsi/ginkgo/ginkgo && \
    go get github.com/onsi/gomega && \
    go get github.com/alecthomas/gometalinter && \
    go get github.com/Masterminds/glide

RUN gometalinter --install
