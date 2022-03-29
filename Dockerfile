ARG TAG=14.17.5
FROM node:$TAG
WORKDIR /app
COPY ./src/package*.json .
RUN npm install
COPY ./src .
CMD [ "node", "server.js" ]