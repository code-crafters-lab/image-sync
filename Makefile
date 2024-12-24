tidy:
	@go mod tidy

build:
	@go build -a -o image-toolkit.exe main.go
