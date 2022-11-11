FROM node:latest as node
COPY . .
RUN npm install --force
ENV NODE_OPTIONS=--openssl-legacy-provider
RUN npm run build 

# stage 2 for prod 
FROM nginx:alpine
COPY --from=node /dist/my-app /usr/share/nginx/html
