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
EXPOSE 3001

# Start the app
CMD ["node", "app.js"]

