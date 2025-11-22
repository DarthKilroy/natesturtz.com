FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json and package-lock.json are copied when available
COPY package.json ./
RUN npm install --production

# Bundle app source
COPY . .

# Use non-root user for security
RUN chown -R node:node /usr/src/app
USER node

EXPOSE 80

CMD ["node", "server.js"]
