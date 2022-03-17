FROM node:17-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /Desktop/techworld-js-docker-demo-app-master/app

COPY . /Desktop/techworld-js-docker-demo-app-master/app

WORKDIR /Desktop/techworld-js-docker-demo-app-master/app

CMD ["node","server.js"]

EXPOSE 3000
