# stage 2 for prod 
FROM nginx:alpine
COPY /dist/myapp /usr/share/nginx/html
