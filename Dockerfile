# Use nginx alpine as base image
FROM nginx:alpine

# Copy all HTML, CSS, and image files to nginx html directory
COPY index.html /usr/share/nginx/html/
COPY about.html /usr/share/nginx/html/
COPY contact.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY portfolio-banner.svg /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Use default nginx command (CMD is inherited from base image)
