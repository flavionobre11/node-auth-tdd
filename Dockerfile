FROM node:14.16.1-alpine

USER root

WORKDIR /usr/node-auth/app

RUN apk update && apk add --no-cache -q bash

COPY package*.json ./

RUN npm install --silent

COPY . .

EXPOSE 3000