# Use the official Node.js image as a base
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 8080 for the app
EXPOSE 8080

# Define the command to run the app
CMD [ "npm", "start" ]
