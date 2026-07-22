FROM node:20

WORKDIR /docker-testapp-main

COPY package*.json ./


RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
