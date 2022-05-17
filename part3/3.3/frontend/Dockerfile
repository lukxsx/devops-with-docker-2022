# I'm using node image from Docker Hub instead of installing node with the bash script.
# This could be done too with for example ubuntu or debian image, and using curl with the script
# But I think this is a better way
FROM node:16

# Expose the port
EXPOSE 5000

# Set env variable for backend
ENV REACT_APP_BACKEND_URL=http://localhost/api

WORKDIR /frontend

COPY . .

RUN mkdir -p /usr/local/lib/node_modules/serve
RUN useradd --create-home --home-dir /usr/local/appuser --shell /bin/bash appuser
RUN chown -R :appuser /frontend /usr/local/lib/node_modules /usr/local/bin
RUN chmod -R 775 /frontend /usr/local/lib/node_modules /usr/local/bin

USER appuser
ENV HOME /usr/local/appuser

# Check the install and install packages
RUN node -v && npm -v
RUN npm install

# Build the project and install serve
RUN  npm run build
RUN npm install -g serve

# Start the application
CMD serve -s -l 5000 build
