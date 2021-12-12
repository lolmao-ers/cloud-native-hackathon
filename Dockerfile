FROM node:16

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8000

RUN npm install nodemon -g

CMD ["nodemon", "index.js"]
