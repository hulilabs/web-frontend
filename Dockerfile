FROM node:alpine

ENV NODE_PATH /install/node_modules/
ENV PATH /install/node_modules/.bin:$PATH

RUN npm install -g \
    ansi-html \
    ansi-regex \
    gulp-cli \
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