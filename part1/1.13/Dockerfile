# Using alpine image of go
FROM golang:alpine

EXPOSE 8080

# Set release env variable. Without this the backend will run in the debug mode
ENV GIN_MODE=release

WORKDIR /backend

# Copy the application to the image. Make sure to have the files in the same directory.
COPY . .

# Build the application. Not going to run the tests, because they apparently need gcc, and it might be
# unnecessary to run the tests in the container.
RUN go build

# Run the server
CMD ./server

