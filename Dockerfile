FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm@9
COPY package*.json app/
COPY themes  app/
COPY extensions  app/
COPY public  app/
COPY media  app/
COPY config  app/
COPY translations  app/
RUN npm install
RUN npm run build

EXPOSE 80
CMD ["npm", "run", "start"]
