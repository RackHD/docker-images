FROM golang:1.7rc2-alpine

RUN apk add --no-cache git make bash

RUN go get github.com/onsi/ginkgo/ginkgo && \
go get github.com/onsi/gomega && \
go get github.com/alecthomas/gometalinter && \
gometalinter --install —update
