# stage 2 for prod 
FROM nginx:alpine
COPY ./dist/my-app /usr/share/nginx/html
