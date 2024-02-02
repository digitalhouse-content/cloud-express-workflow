FROM node:18.16.0-alpine3.17
WORKDIR /src/app
COPY src/package.json src/package-lock.json .
RUN npm install
COPY src/ .
EXPOSE 3000
CMD [ "npm", "start"]