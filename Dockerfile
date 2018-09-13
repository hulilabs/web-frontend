FROM node:alpine

RUN npm install -g webpack webpack-cli webpack-dev-server yarn ansi-html html-entities loglevel sockjs-client strip-ansi ansi-regex

EXPOSE 9000

WORKDIR /srv