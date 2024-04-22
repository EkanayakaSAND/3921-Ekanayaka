FROM node:18-alpine

RUN npm install -g nodemon

COPY package.json .

WORKDIR /backend

COPY . .

RUN npm install

EXPOSE 4000

CMD [ "npm", "run", "dev" ]