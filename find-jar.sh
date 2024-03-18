#!/bin/bash

# Find the latest JAR file in the directory
jar_file=$(ls -t /app/*.jar | head -n1)

# Run the application using the found JAR file
java -jar "$jar_file"
