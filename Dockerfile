FROM node:alpine

ENV NODE_PATH /install/node_modules/
ENV PATH /install/node_modules/.bin:$PATH

RUN npm install -g \
    vite@2.9.12 \
    vite-plugin-vue2@1.9.3 \
    vite-plugin-markdown@2.0.2 \
    eslint \
    eslint-config-prettier \
    eslint-plugin-prettier \
    eslint-plugin-vue

EXPOSE 9000

WORKDIR /srv

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh