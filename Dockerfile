FROM node:8


COPY . .
ADD server.js package*.json ./
RUN npm install

EXPOSE 8080

#ENTRYPOINT ["npm", "start"]

ENTRYPOINT [] # Elimina el entrypoint de node:8
CMD ["node", "server.js"]