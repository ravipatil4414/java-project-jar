# Use a base image with Ubuntu
FROM ubuntu

# Install OpenJDK 11
RUN apt-get update && \
    apt-get install -y openjdk-11-jre-headless && \
    apt-get clean;

# Set the working directory in the container
WORKDIR /app

# Copy the JAR and WAR files into the container
COPY server/target/server.jar /app/
COPY webapp/target/webapp.war /app/

# Command to run the application
CMD ["java", "-jar", "server.jar"]
