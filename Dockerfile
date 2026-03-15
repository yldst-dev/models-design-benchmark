# Build stage
FROM node:18-alpine AS builder

WORKDIR /app

# Copy all files
COPY . .

# Install dependencies if package.json exists
RUN if [ -f package.json ]; then npm install; fi

# Production stage
FROM nginx:alpine

# Copy nginx config
RUN echo "server { \
    listen 80; \
    root /usr/share/nginx/html; \
    index index.html; \
    \
    location / { \
        try_files \$uri \$uri/ /index.html; \
    } \
    \
    location ~* \\.html$ { \
        add_header Cache-Control 'no-cache, no-store, must-revalidate'; \
    } \
    \
    location ~* \\.(js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ { \
        add_header Cache-Control 'public, max-age=31536000, immutable'; \
    } \
}" > /etc/nginx/conf.d/default.conf

# Copy built files from builder
COPY --from=builder /app /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
