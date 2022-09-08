# Imágen base para trabajar
FROM node:14-alpine

# Etiquetado
LABEL maintainer="yamid.rc@palmats.com"
LABEL project="Hello Bootcamp"

# Manejo de la aplicación personalizada
RUN     mkdir -p /app/node_modules
RUN     chown node:node -R /app
WORKDIR /app
COPY    hello-bootcamp ./
RUN     chown node:node -R /app
USER    node
RUN     npm install
EXPOSE  4000
CMD     [ "npm", "start" ]
