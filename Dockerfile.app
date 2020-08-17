FROM node:10

WORKDIR /usr/src/app

COPY package.json package-lock.json entrypoint.sh ./

COPY . .

ARG NODE_ENV='dev'
ARG SERVER_PORT

EXPOSE $SERVER_PORT

ENTRYPOINT ["sh", "./entrypoint.sh"]

CMD [ "node", "index.js" ]