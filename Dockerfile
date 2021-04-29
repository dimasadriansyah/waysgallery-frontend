FROM node:14
WORKDIR /usr/src/app
COPY . .
ENV ENV_NODE production
RUN npm i
RUN npm run build
RUN npm install serve -g
EXPOSE 3000
CMD ["serve", "-l", "tcp://0.0.0.0:3000", "-s", "build"]
