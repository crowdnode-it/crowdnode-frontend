# Use the latest Node LTS image
FROM node:20-slim

# Install basic dependencies for Expo and Git
RUN apt-get update && apt-get install -y git

WORKDIR /app

COPY package*.json ./

RUN npm install && npm install -g @expo/ngrok

# Copy the rest of the application
COPY . .

# Expo Metro Bundler port
EXPOSE 8081

# Default command to start the dev server
CMD ["npx", "expo", "start","--tunnel"]