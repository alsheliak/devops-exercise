FROM node:8.11.3-alpine

WORKDIR /app
COPY . /app
RUN npm install
ARG APP_VERSION
ENV APP_VERSION=${APP_VERSION}
RUN source env_file
EXPOSE 3000

CMD ["node", "app.js"]
