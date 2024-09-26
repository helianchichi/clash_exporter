.PHONY: lint test snapshot
lint:
	golangci-lint run
build:
	go build -o clash_exporter clash_exporter.go client.go model.go

test:
	go test -coverprofile=coverage.txt -covermode=atomic

snapshot:
	goreleaser --snapshot --rm-dist
