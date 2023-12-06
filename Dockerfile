# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your local build context into the container
COPY target/*.jar app.jar

# Expose the port your Spring Boot application is listening on (adjust if needed)
EXPOSE 8080

# Specify the command to run your Java application
ENTRYPOINT ["java", "-jar", "app.jar"]