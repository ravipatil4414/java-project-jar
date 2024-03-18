# Use a base image with OpenJDK 11
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR and WAR files into the container
COPY server/target/server.jar /app/
COPY webapp/target/webapp.war /app/

# Command to run the application
CMD ["java", "-jar", "server.jar"]

