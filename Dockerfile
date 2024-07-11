# Use an official Node runtime as a parent image
FROM node:20

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

RUN npm run build

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
