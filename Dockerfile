FROM node:16.15.1

RUN mkdir -p usr/src/wellraum-landing

COPY . /usr/src/wellraum-landing

WORKDIR /usr/src/wellraum-landing

RUN npm install

RUN npm run build

EXPOSE 3001

CMD [ "npm", "start" ]