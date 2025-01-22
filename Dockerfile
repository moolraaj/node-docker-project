FROM node:22

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Define a build argument for the environment
ARG NODE_ENV

# Install dependencies based on the environment
RUN if [ "$NODE_ENV" = "development" ]; then \
      npm install; \
    else \
      npm ci --only=production; \
    fi

# Copy the application code
COPY . .

# Set the default command to run the application
CMD ["node", "index.js"]
