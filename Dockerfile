FROM node:16.20.2-buster-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm run build

EXPOSE 3000

CMD [ "npm", "run", "dev" ]