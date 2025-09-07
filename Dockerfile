FROM node:14


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install --only=production

# Bundle app source
COPY . .

# Expose app port
EXPOSE 3000

# Start app
CMD ["node", "server.js"]

