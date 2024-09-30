FROM node:22-alpine

WORKDIR /server
COPY server/package*.json ./
RUN npm install
COPY server ./

WORKDIR /client
COPY client ./

CMD ["/server/index.js"]
