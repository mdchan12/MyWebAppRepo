# Use an official NGINX image as a base
FROM nginx:latest

# Copy the index.html file into the NGINX web root
COPY index.html /usr/share/nginx/html
