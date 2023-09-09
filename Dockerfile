# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app


# Install Node.js dependencies
RUN npm install

# Copy the entire application to the container
COPY . .

# Build the React application
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]





