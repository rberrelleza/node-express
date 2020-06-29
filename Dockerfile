FROM node:12
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
COPY package.json ./
RUN mkdir vendor && touch vendor/empty
RUN yarn install
COPY . . 
CMD ["node", "index.js"]