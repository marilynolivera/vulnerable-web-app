FROM node:8-alpine


COPY . .
ADD server.js package*.json ./
RUN npm install

EXPOSE 8080

#ENTRYPOINT ["npm", "start"]

CMD node server.js