FROM node:16-alpine as build-stage

# Set env variable for backend
ENV REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /frontend

COPY . .

RUN npm install && npm run build

FROM nginx:alpine
COPY --from=build-stage /frontend/build/ /usr/share/nginx/html

