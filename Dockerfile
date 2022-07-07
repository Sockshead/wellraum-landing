# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
#CMD ["npm", "serve"]

# production stage
FROM nginx as production-stage
#RUN rm /etc/nginx/conf.d/default.conf
#RUN rm /etc/nginx/nginx.conf
COPY --from=build-stage /app/dist /usr/share/nginx/html
#COPY --from=build-stage /app/nginx.conf /etc/nginx/conf.d/default.conf
#COPY --from=build-stage /app/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]