# Use an official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app to the container
COPY . .

# Expose the port that Nest.js will run on
EXPOSE 3001

# Start the Nest.js app
CMD ["npm", "run", "start:dev"]
