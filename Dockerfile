FROM node:current-slim

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build

FROM nginx:1.13

COPY dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080:80