FROM nginx

## Step 1:
# Create a working directory
WORKDIR /capstone

## Step 2:
# Copy source code to working directory
COPY . capstone /capstone/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch