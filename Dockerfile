FROM node:16.17.0-alpine3.15

EXPOSE 3000

ENV PORT 3000

WORKDIR /home/nextjs/app
COPY package.json package.json
RUN npm install
ADD . .
ENV NODE_ENV production
RUN npm run build
RUN npm prune --production

CMD [ "npm", "start" ]
