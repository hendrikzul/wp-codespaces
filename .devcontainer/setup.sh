#!/bin/bash

# Download and extract WordPress into ./src if not exist
if [ ! -f "src/wp-config-sample.php" ]; then
  echo "⬇️  Downloading WordPress..."
  curl -sO https://wordpress.org/latest.zip
  unzip -q latest.zip
  mkdir -p src
  mv wordpress/* src/
  rm -rf wordpress latest.zip
fi

# Start Docker containers
echo "🚀 Starting Docker Compose..."
docker-compose up -d
