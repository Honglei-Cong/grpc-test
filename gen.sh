#!/bin/bash

go get github.com/golang/protobuf/protoc-gen-go
go get github.com/golang/protobuf/proto
go get golang.org/x/net/context
go get google.golang.org/grpc

protoc -I pb pb/helloworld.proto --go_out=plugins=grpc:./pb
