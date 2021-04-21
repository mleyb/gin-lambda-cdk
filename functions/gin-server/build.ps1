#$env:GO111MODULE = "on"
#go get -u github.com/aws/aws-lambda-go/cmd/build-lambda-zip

$env:GOOS = "linux"
$env:GOARCH = "amd64"
$env:CGO_ENABLED = "0"

go get -v

go build -v -o bin\main .

# TODO - sort this right out
#~\Go\bin\build-lambda-zip.exe -o main.zip main

