FROM node:8.11.3-alpine

WORKDIR /app
COPY . /app
RUN npm install
RUN source env_file
EXPOSE 3000

CMD ["node", "app.js"]
