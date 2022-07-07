# build stage
FROM node:lts-alpine as build-stage
RUN mkdir -p usr/src/wellraum-app
COPY . /usr/src/wellraum-app
WORKDIR /usr/src//wellraum-app
RUN npm install
RUN npm run build

# production stage
FROM nginx as production-stage
COPY --from=build-stage /usr/src/wellraum-app/dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]