FROM node:17-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /app

COPY . /app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD node server.js

