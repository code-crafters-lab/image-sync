FROM golang:1.22.10

WORKDIR /app

ADD . ./

RUN go build -o image-sync-toolkit

CMD ["./image-sync-toolkit"]