FROM node:14
WORKDIR /usr/src/app
COPY . .
ENV ENV_NODE production
RUN npm i
RUN npm install serve -g
EXPOSE 3000
CMD ["serve", "-p", "3000", "build"]