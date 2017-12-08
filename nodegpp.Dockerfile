# Use the 'node:9.2.0' official image from Docker Hub
FROM node:9.2.0

# Create directory for the app files in the image
RUN mkdir -p /usr/src/app

# Set the working directory to the directory that shall store the app files.
WORKDIR /usr/src/app

# Install the g++ compiler which is needed for the db2 libraries.
RUN apt-get install g++
