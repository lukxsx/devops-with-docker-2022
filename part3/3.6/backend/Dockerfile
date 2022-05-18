FROM golang:alpine as build-stage

WORKDIR /build
COPY . .

ENV REQUEST_ORIGIN=http://localhost:80
ENV GIN_MODE=release

RUN CGO_ENABLED=0 go build -a -installsuffix cgo

# running stage
FROM scratch

EXPOSE 8080
ENV REQUEST_ORIGIN=http://localhost:80
ENV GIN_MODE=release

COPY --from=build-stage /build/server /server

CMD ["/server"]

