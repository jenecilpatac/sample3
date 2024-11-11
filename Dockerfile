# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the custom Nginx config to override the default
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/index.html

# Expose port 5003
EXPOSE 5003

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]