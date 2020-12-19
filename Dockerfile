FROM nginx:latest

COPY .env conf.sh nginx.conf /etc/nginx/

WORKDIR /etc/nginx

RUN sh /etc/nginx/conf.sh
