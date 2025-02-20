# Use an OpenJDK 21 base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built Spring Boot JAR file into the container
COPY target/dashboardapi-0.0.1-SNAPSHOT.war /app/dashboardapi-0.0.1-SNAPSHOT.war

# Expose the port the app will run on
EXPOSE 8080

# Run the Spring Boot JAR file when the container starts
ENTRYPOINT ["java", "-jar", "/app/dashboardapi-0.0.1-SNAPSHOT.war"]
