FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files first and install all deps (including devDeps)
# so we can run the Tailwind build during image build.
COPY package.json package-lock.json* ./
RUN npm install

# Bundle app source
COPY . .

# Build assets (Tailwind CSS)
RUN npm run build:css && npm prune --production

# Use non-root user for security and set ownership
RUN chown -R node:node /usr/src/app
USER node

EXPOSE 80

# Use the start script to run the server
CMD ["npm", "start"]
