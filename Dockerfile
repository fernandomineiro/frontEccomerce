
FROM node:16.16


WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the client code
COPY . .

RUN mv .env.example .env

# Build the client for production
RUN npm run build

# Expose port 8080 for the client
EXPOSE 8080

# Start the client
CMD [ "npm", "run", "dev" ]