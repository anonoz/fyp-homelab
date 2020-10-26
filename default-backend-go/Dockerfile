FROM golang:alpine
WORKDIR /go/src/app
COPY main.go .
RUN go build

FROM alpine:latest
COPY --from=0 /go/src/app/app .
EXPOSE 80
CMD ["./app"]
