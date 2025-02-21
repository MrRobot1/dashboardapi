# Use an OpenJDK 21 base image with Maven pre-installed
FROM maven:3.8.6-openjdk-21-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven pom.xml and source code into the container
COPY pom.xml /app/
COPY src /app/src/

# Build the Spring Boot project with Maven
RUN mvn clean package -DskipTests

# Now that we have the JAR, let's create the runtime image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container for the runtime
WORKDIR /app

# Copy the built JAR file from the build stage to the runtime container
COPY --from=build /app/target/dashboardapi-0.0.1-SNAPSHOT.jar /app/dashboardapi-0.0.1-SNAPSHOT.jar

# Expose the port the app will run on
EXPOSE 8080

# Run the Spring Boot JAR file when the container starts
ENTRYPOINT ["java", "-jar", "/app/dashboardapi-0.0.1-SNAPSHOT.jar"]
