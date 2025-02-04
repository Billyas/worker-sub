FROM node:lts

RUN npm install -g wrangler
RUN git clone https://github.com/Billyas/worker-sub /app

WORKDIR /app
RUN npm install

EXPOSE 8787
CMD ["npm", "run", "start"]