FROM node:alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

RUN export NODE_OPTIONS=--openssl-legacy-provider && npm install

COPY . ./

CMD ["npm", "start"]