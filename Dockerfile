FROM node:lts

COPY . /app

WORKDIR /app
RUN npm install -g wrangler --loglevel verbose
RUN npm install --loglevel verbose

EXPOSE 8787
CMD ["npm", "run", "start"]