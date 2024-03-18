# Use a base image with Java pre-installed
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/*.jar /app/

# Copy script for dynamically finding JAR file
COPY find-jar.sh /app/

# Make script executable
RUN chmod +x /app/find-jar.sh

# Command to run the application using the script
CMD ["/app/find-jar.sh"]
