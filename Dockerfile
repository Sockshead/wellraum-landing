# build stage
FROM node:lts-alpine as build-stage
RUN mkdir -p usr/src/wellraum-landing
COPY . /usr/src/wellraum-landing
WORKDIR /usr/src/wellraum-landing
RUN npm install
RUN npm run build

# production stage
FROM nginx:latest as production-stage
COPY --from=build-stage /usr/src/wellraum-landing/dist /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]