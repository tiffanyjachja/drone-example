#Simple Docker File
FROM golang:1.13
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
ADD https://get.aquasec.com/microscanner .
RUN chmod +x microscanner
ARG scanner_token
RUN microscanner ${scanner_token}
RUN echo "No vulnerabilities!"
