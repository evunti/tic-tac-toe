FROM node:22-alpine
WORKDIR /web
COPY . .
RUN npm install
EXPOSE 3000
CMD npm start 