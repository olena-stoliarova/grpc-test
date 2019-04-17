.PHONY: generate

structure.pb.go:
# https://jbrandhorst.com/post/go-protobuf-tips/
#	protoc -I. --go_out=${GOPATH}/src proto/one/structure.proto

# https://github.com/golang/protobuf#packages-and-input-paths
	protoc -I. --go_out=paths=source_relative:. proto/one/structure.proto

complex.pb.go:
#	protoc -I. --go_out=${GOPATH}/src proto/two/complex.proto

	protoc -I. --go_out=paths=source_relative:. proto/two/complex.proto

generate: structure.pb.go complex.pb.go