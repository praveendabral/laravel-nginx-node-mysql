# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY app/package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY app/ ./

# Expose the port your Node.js app will listen on
EXPOSE 3000

# Start the Node.js application
CMD ["node", "app.js"]