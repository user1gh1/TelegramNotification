FROM node:lts-alpine3.17

WORKDIR /app

COPY . /app

RUN npm ci
RUN npm run build

EXPOSE 8888

CMD ["npm","run","dev" ]
