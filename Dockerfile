# Use the official Node.js image
FROM node

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Nest.js application
RUN npm run build

# Expose the port your app will run on (adjust as needed)
EXPOSE 3000

# Command to run your application
CMD ["npm", "run", "start:prod"]
