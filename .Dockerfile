# Stage 1: Build the application
FROM golang:latest AS builder
WORKDIR /codeproject
COPY . .
RUN GOOS=linux GOARCH=amd64 go build -o main . && chmod +x main

# Stage 2: Create a minimal image
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /codeproject/main .
RUN chmod +x main
EXPOSE 8080
CMD ["./main"]