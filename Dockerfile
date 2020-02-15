FROM node:13-alpine
WORKDIR /src
RUN npm install -g sails grunt npm-check-updates
COPY package*.json /src

RUN npm install

COPY . /src
EXPOSE 1337
CMD [ "npm", "start" ]