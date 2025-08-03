PROTO_FILES := $(shell find proto -type f -name '*.proto')

.PHONY: gen-go
gen-go:
	protoc \
	  -I proto \
	  $(PROTO_FILES) \
	  --go_out=paths=source_relative:gen/go/svc \
	  --go_opt=paths=source_relative \
	  --go-grpc_out=paths=source_relative:gen/go/svc \
	  --go-grpc_opt=paths=source_relative
