# Use official OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy built JAR file into the container
COPY target/*.jar app.jar

# Expose port (match Spring Boot port)
EXPOSE 9090

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
