BIN := bin
OUTPUT := main

.PHONY : build

build:
	GOOS=linux GOARCH=amd64 go build -v -o ${BIN}/${OUTPUT} .

clean:
	go clean
	rm -rf ${BIN}

fmt:
	go fmt ./...

lint:
	go get -u golang.org/x/lint/golint
	go vet ./...
	golint -set_exit_status ./...

test:
	go test -v -cover ./...
