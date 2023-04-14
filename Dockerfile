FROM golang

WORKDIR /src

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .
RUN make build

FROM scratch

EXPOSE 8080/tcp
ENTRYPOINT ["/golang-demo"]