# Use official Nginx image
FROM nginx:alpine

# Remove default index file
RUN rm -rf /usr/share/nginx/html/*

# Copy custom index.html to nginx html folder
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

