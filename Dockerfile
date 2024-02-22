# Use an official OpenJDK runtime as a base image
FROM openjdk:11-slim
# Set the working directory to /app
WORKDIR /app
# Copy the compiled Java application JAR file into the container
COPY HelloWorld.java .

RUN javac HelloWorld.java

# Run the Java application
CMD ["java", "HelloWorld"]
