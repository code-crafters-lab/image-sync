FROM golang:1.22.10

ADD . ./

RUN go build -o image-sync-toolkit

#CMD ["./image-sync-toolkit"]
ENTRYPOINT ["sh", "-c", "./image-sync-toolkit"]