# Use an official Node.js 14 image as a base
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json file
COPY package*.json. /

# Install dependencies
RUN npm install

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy the rest of the application code
COPY . .

# Expose the port the Angular application will use
EXPOSE 4200

# Run the command to start the Angular application
CMD ["npm", "start"]
