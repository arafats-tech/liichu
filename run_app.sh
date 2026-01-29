#!/bin/bash

# -------------------------
# App-style auto-fix & run
# -------------------------

echo "🚀 Starting auto-fix for Node.js modules..."

# Node version info
echo "🟢 Using Node version:"
node -v

# Remove old modules
echo "🗑️ Removing old node_modules and package-lock.json..."
rm -rf node_modules package-lock.json

# Update system packages
echo "📦 Updating system packages..."
sudo apt-get update -y

# Install required libraries for canvas
echo "🔧 Installing required system libraries..."
sudo apt-get install -y build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev

# Install node modules
echo "📥 Installing node modules..."
npm install

# Rebuild canvas
echo "🔄 Rebuilding canvas..."
npm rebuild canvas

# Run the app
echo "🏃 Running app..."
node app.js

