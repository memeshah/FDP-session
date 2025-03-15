# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the packaged JAR file from the build directory
COPY target/FDP-session-1.0-SNAPSHOT.jar app.jar

# Execute the JAR file
CMD ["java", "-jar", "app.jar"]