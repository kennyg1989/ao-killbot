FROM node:8

RUN apt-get update
RUN apt-get install -y nano

COPY ao-killboard.js /usr/src/app/ao-killboard.js
COPY config.json.example /usr/src/app/config.json
COPY package.json /usr/src/app/package.json
COPY package-lock.json /usr/src/app/package-lock.json

WORKDIR /usr/src/app

RUN npm install && npm install rimraf && npm install --save-dev babel-cli

CMD ["npm","start"]
