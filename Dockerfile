FROM nginx

## Step 1:
# Copy the capstone folder to the /usr/share/nginx/html
COPY . capstone /usr/share/nginx/html/

## Step 2:
# Expose port 80
EXPOSE 80