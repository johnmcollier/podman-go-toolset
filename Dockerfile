FROM registry.access.redhat.com/ubi9/go-toolset:latest

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o ./main

CMD [ "/app/main"]
