FROM node:13-alpine
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1337
CMD [ "node", "app.js" ]