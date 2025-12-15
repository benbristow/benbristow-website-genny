FROM nginx:alpine

# Copy the build directory contents to nginx html directory
COPY build/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# nginx runs in the foreground by default in the alpine image
CMD ["nginx", "-g", "daemon off;"]

