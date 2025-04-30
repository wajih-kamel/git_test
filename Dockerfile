# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the local files into the Nginx server directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Expose port 80 to be accessible from outside the container
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
