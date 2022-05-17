# Using alpine image of go
FROM golang:bullseye

EXPOSE 8080

# Set release env variable. Without this the backend will run in the debug mode
ENV GIN_MODE=release

# Setting the env variable for cors check
ENV REQUEST_ORIGIN=http://localhost:5000

RUN useradd -m appuser

WORKDIR /backend
RUN chown -R :appuser /backend
RUN chmod -R 775 /backend
COPY . .

# Build the application. Not going to run the tests, because they apparently need gcc, and it might be
# unnecessary to run the tests in the container.
USER appuser
RUN go build

# Run the server
CMD ./server

