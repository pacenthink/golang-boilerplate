FROM golang

WORKDIR /src

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /golang-boilerplate

EXPOSE 8080

CMD [ "/golang-boilerplate" ]
ENTRYPOINT ["/"]