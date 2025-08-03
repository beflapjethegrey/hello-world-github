# Use official Nginx as base
FROM nginx:alpine

# Copy our hello.py into container (not used by nginx, but kept for consistency)
COPY hello.py /usr/share/nginx/html/hello.py

# Replace default nginx index with "Hello World" page
RUN echo '<h1>Hello from GitHub Actions + Nexus + Docker!</h1>' > /usr/share/nginx/html/index.html

EXPOSE 80
