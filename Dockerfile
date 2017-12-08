# Use the 'node:9.2.0' official image from Docker Hub
FROM node:9.2.0

# Install the g++ compiler which is needed for the db2 libraries.
RUN apt-get install g++

# Create directory for the app files in the image
RUN mkdir -p /usr/src/app

# Set the working directory to the directory that shall store the app files.
WORKDIR /usr/src/app

# Copy in package.json file
COPY package.json package.json

# Install NPM.
RUN npm install  

# Copy in all files from current directory
COPY . .

# Let the consumer listen on port 8000 and respond on http://localhost:80 on your computer
EXPOSE 8000

# Start the container
CMD ["npm", "start"]
