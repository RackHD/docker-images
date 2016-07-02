FROM golang:1.7-wheezy

RUN go get github.com/onsi/ginkgo/ginkgo
RUN go get github.com/onsi/gomega
RUN go get github.com/alecthomas/gometalinter

RUN gometalinter --install --update
