FROM golang:1.22.10

WORKDIR /app

COPY main.go .

RUN go build -o image-sync-action

CMD ["./image-sync-action"]