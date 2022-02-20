# I'm using node image from Docker Hub instead of installing node with the bash script.
# This could be done too with for example ubuntu or debian image, and using curl with the script
# But I think this is a better way
FROM node:16-alpine
EXPOSE 5000

WORKDIR /frontend

COPY . .

# Check the install and install packages
RUN node -v && npm -v
RUN npm install

# Build the project and install serve
RUN npm run build
RUN npm install -g serve

# Start the application
CMD serve -s -l 5000 build
