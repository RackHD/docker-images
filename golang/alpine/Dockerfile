FROM golang:1.7rc6-alpine

RUN apk add --no-cache git make bash curl

RUN go get github.com/onsi/ginkgo/ginkgo && \
go get github.com/onsi/gomega && \
go get github.com/alecthomas/gometalinter && \
go get github.com/Masterminds/glide && \
gometalinter --install —update
