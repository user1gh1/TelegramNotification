FROM node:lts-alpine3.17

WORKDIR /app

COPY . /app

RUN npm ci && npm run build && apk add bash

EXPOSE 80

CMD ["npm","run","dev" ]
