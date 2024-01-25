ARG JAR_VERSION=0.0.1-SNAPSHOT

# Use an official Maven image as a build stage
FROM maven:3.8.4-openjdk-17 AS build

ARG JAR_VERSION

# Set the working directory
WORKDIR /app

# Copy the pom.xml for dependencies
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline

# Copy the application code
COPY src src

# Build the application
RUN mvn package -Djar.version=$JAR_VERSION


# Use a lightweight Java image for the runtime
FROM openjdk:17-slim

ARG JAR_VERSION

# Set the working directory
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/st2dce-$JAR_VERSION.jar app.jar

# Expose the port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
