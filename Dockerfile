FROM node:20.11.0-alpine3.19

ENV NODE_PATH /install/node_modules/
ENV PATH /install/node_modules/.bin:$PATH

RUN apk add --no-cache python3 make g++

RUN npm install -g \
    ansi-html \
    ansi-regex \
    html-entities \
    loglevel \
    sockjs-client \
    strip-ansi \
    webpack \
    webpack-cli \
    webpack-dev-server

EXPOSE 9000

WORKDIR /srv

COPY entrypoint.sh /entrypoint.sh