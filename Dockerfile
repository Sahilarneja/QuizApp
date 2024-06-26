# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install npm dependencies
RUN npm install -g npm@latest
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .

# Expose the port your app runs on (if applicable)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
