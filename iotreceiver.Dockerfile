# Use the custom node image with g++ compiler
FROM iotnodejsconsumer_nodegpp

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
