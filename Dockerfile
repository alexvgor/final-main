# https://hub.docker.com/repository/docker/avgordeev72/final-main/general

FROM golang:1.22

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /main .

CMD ["/main"]