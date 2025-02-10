# Use the official Node.js image as base
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm ci

# Copy the rest of the files
COPY . .

# Expose the application port (8080)
EXPOSE 8080

# Start the Node.js server
CMD ["npm", "start"]