FROM node:16-alpine

# Expose the port
EXPOSE 5000

# Set env variable for backend
ENV REACT_APP_BACKEND_URL=http://localhost/api

WORKDIR /frontend

COPY . .

RUN node -v && npm -v && npm install && \
  npm run build && npm install -g serve

# Start the application
CMD serve -s -l 5000 build
