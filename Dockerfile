# build stage
FROM node:lts-alpine 
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# production stage
#FROM nginx:latest as production-stage
#COPY --from=build-stage /usr/src/wellraum-landing/dist /usr/share/nginx/html
#CMD ["nginx", "-g", "daemon off;"]