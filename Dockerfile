FROM node:8.11.3-alpine

WORKDIR /app
COPY . /app
RUN npm install
ARG buildtime_variable=default_value
ENV MONGO_URI=$buildtime_variable
EXPOSE 3000

CMD ["node", "app.js"]
