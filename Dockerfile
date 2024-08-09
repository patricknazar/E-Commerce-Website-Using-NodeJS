# Extend a node image to run our nodejs app
FROM node:22

# Define a volume to mount the app in
VOLUME /home/node

# Change to that directory
WORKDIR /home/node

# Export the app's port 3000
EXPOSE 3000

# Command to run our app
CMD ["node", "app.js"]