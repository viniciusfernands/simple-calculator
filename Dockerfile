FROM node:16

WORKDIR /src

RUN npm install npm@latest -g

COPY package.json package-lock*.json ./

RUN npm install

COPY . .

CMD ["npm", "run", "dev"]
