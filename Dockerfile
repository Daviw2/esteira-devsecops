FROM node:22-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN apk upgrade --no-cache \
    && npm install --omit=dev \
    && rm -rf /usr/local/lib/node_modules/npm \
              /usr/local/lib/node_modules/corepack \
              /opt/yarn* \
              /usr/local/bin/npm \
              /usr/local/bin/npx \
              /usr/local/bin/yarn \
              /usr/local/bin/yarnpkg \
              /usr/local/bin/corepack

COPY server.js ./

USER node

EXPOSE 3000

CMD ["node", "server.js"]