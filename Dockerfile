# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the custom Nginx config to override the default
#COPY nginx.conf /etc/nginx/conf.d/default.conf


COPY . .

# Expose port 5003
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]