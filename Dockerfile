#Simple Docker File
FROM golang:1.13
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
ARG scanner_token
RUN /microscanner ${scanner_token}
RUN echo "No vulnerabilities!"
