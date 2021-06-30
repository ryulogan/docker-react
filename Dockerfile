from node:alpine

workdir /usr/app

copy ./visits-starter/package.json . 

RUN npm install 

copy ./visits-starter/. .

cmd ["npm", "start"]