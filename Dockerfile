FROM node:8.11.3-alpine

WORKDIR /app
COPY . /app
COPY .env /app
RUN source .env
RUN npm install
ARG APP_VERSION

ENV APP_VERSION=${APP_VERSION}

EXPOSE 3000

CMD ["node", "app.js"]
