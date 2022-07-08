# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:latest as production-stage
#COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY index.html /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]