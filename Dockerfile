FROM node:16.20.2-buster-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
