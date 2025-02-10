# Stage 1: Build the application
FROM golang:latest AS builder
WORKDIR /codeproject
COPY go.mod go.sum ./
RUN go mod download
COPY . ./
RUN go build -o main .

# Stage 2: Create a minimal image
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .
EXPOSE 8080
CMD ["./main"]
