# Using the latest alpine image
FROM alpine:latest

# Installing basic C building tools
RUN apk add --no-cache build-base

# Setting the working directory
WORKDIR /2048

# Copy the contents to the image
COPY . .

# Compile the software
RUN make

# Run the game
CMD ["/2048/2048"] 
