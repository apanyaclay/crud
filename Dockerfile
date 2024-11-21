# Use official Node.js runtime as base image
FROM node:18-slim

# Set working directory in container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port 3000
EXPOSE 8080

# Command to run the application
CMD ["node", "app.js"]