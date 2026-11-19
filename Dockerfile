FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --omit=dev

COPY server.js ./

# Boa pratica de container: nao executar como root
USER node

EXPOSE 3000

CMD ["node", "server.js"]