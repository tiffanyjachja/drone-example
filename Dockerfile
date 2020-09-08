#Simple Docker File
FROM golang:1.13
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .