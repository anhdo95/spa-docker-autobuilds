FROM nginx:1.13

RUN npm install && npm run build

COPY dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080:80