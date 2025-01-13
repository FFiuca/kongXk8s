FROM nginx:1.27.3-alpine

# Set a default value for PROXY_PASS (optional)
ENV PROXY_PASS http://localhost:3001

# Copy the custom Nginx configuration file to the container
COPY ./default /etc/nginx/conf.d/default.conf
COPY ./.htpasswd /etc/nginx/

# Copy the entrypoint script to the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose port 80 for HTTP traffic
EXPOSE 80

# Use the entrypoint script to replace the placeholder at runtime
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]