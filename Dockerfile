# Extend a node image to run our nodejs app
FROM node:22

# Make a directory for the app to go in
RUN mkdir -p /usr/src/app

# Change to that directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies first, as it
# is an expensive operation
COPY package.json /usr/src/app
RUN npm install

# Copy the app itself
COPY . /usr/src/app

# Export the app's port 3000
EXPOSE 3000

# Command to run our app
CMD ["node", "app.js"]