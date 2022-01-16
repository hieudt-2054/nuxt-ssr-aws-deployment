FROM node:14.18.3

ENV APP_DIR /app/

COPY . ./

RUN yarn cache clean
RUN yarn install

ENV HOST 0.0.0.0

EXPOSE 3000

CMD ["yarn", "prod"]
