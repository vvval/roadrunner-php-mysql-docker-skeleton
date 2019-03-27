FROM golang:latest

ENV CGO_ENABLED=0
ENV GO111MODULE=on

WORKDIR /go/src/rr

COPY main.go .

RUN bash -c 'go mod init; go build -o rr main.go'
