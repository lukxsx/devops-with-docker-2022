FROM ubuntu:20.04
WORKDIR /app

# Copy the script and execute chmod in case it's not executable
COPY script.sh .
RUN chmod +x script.sh

# Update repos and install curl
RUN apt-get update
RUN apt-get install -y curl

# Launch the script
CMD ./script.sh
