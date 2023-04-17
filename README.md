# webpack

Dockerized `webpack` and `webpack-dev-server` container, based on `alpine` to produce a small NodeJS container.

## About webpack

From [webpack's website](https://webpack.js.org/):

> At its core, webpack is a static module bundler for modern JavaScript applications. When webpack processes your application, it internally builds a dependency graph which maps every module your project needs and generates one or more bundles.

# Getting started

## Requirements

- A [webpack configuration file](https://webpack.js.org/configuration/) inside of your web app.
- [Docker](https://docs.docker.com/engine/installation/)

## Usage

### Creating webpack bundles from your app

Run this command so webpack can compile your application:

```
docker run -v $(pwd):/srv -w /srv/resource -ti huli/webpack webpack --config webpack.config.js
```

Assuming that:

- Your source is located in `./resource` folder
- There's a `webpack.config.js` file inside `./resource` folder

### Running webpack-dev-server

Use this command to run [web-pack-dev-server](https://github.com/webpack/webpack-dev-server) and take advantage of features like [hot module replacement](https://webpack.js.org/guides/hot-module-replacement/)

```
docker run -v $(pwd):/srv -w /srv/resource -p 9000 -ti huli/webpack webpack-dev-server --hot --progress --host 0.0.0.0 --config webpack.config.js
```

Assuming that:

- Your source is located in `./resource` folder
- There's a `webpack.config.js` file inside `./resource` folder
- You configured webpack-dev-server to use port 9000
