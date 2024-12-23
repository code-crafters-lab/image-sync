FROM golang:1.22.10

WORKDIR /app

ADD . ./

RUN go build -o image-sync-toolkit

RUN ls

CMD ["./image-sync-toolkit"]