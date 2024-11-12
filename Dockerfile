# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the custom Nginx config to override the default
COPY . .


# Expose port 5003
EXPOSE 5003

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]