# Use Node.js base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy files
COPY package.json ./
COPY app.js ./

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]

