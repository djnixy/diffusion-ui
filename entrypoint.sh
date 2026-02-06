#!/bin/sh

# Replace placeholders with environment variable values
find /usr/share/nginx/html -type f -name "*.js" | xargs sed -i "s|__VITE_BACKEND_URL__|${VITE_BACKEND_URL}|g"
find /usr/share/nginx/html -type f -name "*.js" | xargs sed -i "s|__VITE_FORGE_URL__|${VITE_FORGE_URL}|g"
find /usr/share/nginx/html -type f -name "*.js" | xargs sed -i "s|__VITE_DEFAULT_BACKEND_ID__|${VITE_DEFAULT_BACKEND_ID}|g"

# Execute the CMD from the Dockerfile
exec "$@"
