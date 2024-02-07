FROM node:latest as build
WORKDIR /app
#COPY /home/parvej/myapp/package.json ./
#COPY /home/parvej/myapp/package-lock.json ./
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD npm run start

