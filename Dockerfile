FROM node:20

WORKDIR /app

COPY docker-testapp-main/package*.json ./

RUN npm install

COPY docker-testapp-main/ .

EXPOSE 3000

CMD ["node", "server.js"]