FROM node:alpine

RUN npm install -g \
    ansi-html \
    ansi-regex \
    html-entities \
    loglevel \
    sockjs-client \
    strip-ansi \
    webpack \
    webpack-cli \
    webpack-dev-server \
    yarn

EXPOSE 9000

WORKDIR /srv