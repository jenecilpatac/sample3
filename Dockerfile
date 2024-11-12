# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy custom Nginx config to override the default (optional)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the HTML file and the assets (JS, CSS, images) into the container
COPY index.html /usr/share/nginx/html/index.html
COPY js /usr/share/nginx/html/js
COPY css /usr/share/nginx/html/css
COPY assets /usr/share/nginx/html/assets

# Expose port 80 (standard for HTTP)
EXPOSE 5003

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
