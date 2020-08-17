FROM node:10

WORKDIR /usr/src/app

COPY package.json package-lock.json entrypoint.sh ./

#RUN npm install -g nodemon

COPY . .

ARG NODE_ENV='dev'
ARG SERVER_PORT

EXPOSE $SERVER_PORT

ENTRYPOINT ["sh", "./entrypoint.sh"]

# CMD [ "nodemon", "index.js" ]
CMD [ "npm", "run", "dev" ]