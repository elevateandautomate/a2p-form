# Use an official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the local HTML files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 for the web service
EXPOSE 80
