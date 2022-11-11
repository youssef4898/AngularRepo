# stage 2 for prod 
FROM nginx:alpine
COPY --from=node /dist/my-app /usr/share/nginx/html
