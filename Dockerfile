# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD ["npm", "serve"]

# production stage
#FROM nginx as production-stage
#COPY --from=build-stage /app/dist /usr/share/nginx/html
#CMD ["nginx", "-g", "daemon off;"]