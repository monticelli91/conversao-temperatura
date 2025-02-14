# multistage Dockerfile
ARG TAG=14.17.5
FROM node:$TAG as build
WORKDIR /app
COPY ./src/package*.json .
RUN npm install
COPY ./src .

FROM node:lts-alpine as final
WORKDIR /app
COPY --from=build /app .
CMD [ "node", "server.js" ]