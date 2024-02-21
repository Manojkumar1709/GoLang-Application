# Use the official golang image to create a build artifact.
FROM golang:1.21.5 AS builder

# Copy local code to the container image.
WORKDIR /app
COPY . .

# Build the Go app
RUN CGO_ENABLED=0 GOOS=linux go build -o app .

# Use a minimal alpine image to run the app.
FROM alpine:latest

# Copy the binary to the production image from the builder stage.
WORKDIR /root/
COPY --from=builder /app/app .

# Copy the HTML file to the production image.
COPY --from=builder /app/index.html .

# Command to run the executable
CMD ["./app"]
