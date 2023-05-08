# Use the official nginx image as the base image
FROM nginx:1.21-alpine

# Copy the iCoderBootstrap files to the nginx web root directory
COPY . /usr/share/nginx/html

# Configure nginx to serve static resources
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80 for the web server
EXPOSE 80

# Start the nginx web server
CMD ["nginx", "-g", "daemon off;"]
