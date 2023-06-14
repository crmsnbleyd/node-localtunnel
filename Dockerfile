FROM node:18-alpine3.17

COPY --chmod=+x ./entrypoint.sh /entrypoint.sh

RUN npm install -g localtunnel

ENTRYPOINT ["sh", "/entrypoint.sh"]