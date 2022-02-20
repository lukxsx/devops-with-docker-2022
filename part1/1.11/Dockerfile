# Use Debian 11 JDK 8 image
FROM openjdk:8-bullseye

EXPOSE 8080

WORKDIR /spring

# Make sure to have the project files in the same directory
COPY . .

# Run maven
RUN ./mvnw package

# Run the jar
CMD java -jar ./target/docker-example-1.1.3.jar
