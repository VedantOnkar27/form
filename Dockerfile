 Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose port (match the port used in server.js)
EXPOSE 3000

# Run the application
CMD ["node", "server.js"]