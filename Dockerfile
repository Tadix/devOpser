FROM node:14 AS angular
WORKDIR /app
RUN npm install -g @angular/cli
COPY package*.json ./
RUN npm install
COPY . .
#RUN ng build --prod

#CMD["npm","run","start"]
