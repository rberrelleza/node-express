FROM node:12
WORKDIR /usr/src/app
COPY package.json yarn.lock ./
COPY package.json ./
RUN yarn install
COPY . . 
CMD ["node", "index.js"]