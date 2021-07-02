from node:alpine as builder

workdir /app

copy package*.json ./ 

RUN npm install 

copy . .

run npm run build

from nginx

EXPOSE 80
copy --from=0 /app/build /usr/share/nginx/html