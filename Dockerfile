FROM node:14
WORKDIR /usr/src/app
COPY . .
RUN npm i
RUN npm install -g serve
EXPOSE 3000
CMD ["serve", "-p", "3000", "build"]