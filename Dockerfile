FROM nginx:latest

COPY .env /etc/nginx/.env

COPY conf.sh /etc/nginx/conf.sh

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /etc/nginx

RUN sh /etc/nginx/conf.sh
