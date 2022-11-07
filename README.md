# vite
Dockerized vite container, based in Alpine to produce a small NodeJS container.

## About vite
From [vite's website](https://vitejs.dev/):


> At its core, webpack is a static module bundler for modern JavaScript applications. When webpack processes your application, it internally builds a dependency graph which maps every module your project needs and generates one or more bundles.



# Getting started

## Requirements
- A [vite configuration file](https://vitejs.dev/config/) inside of your web app.
- [Docker](https://docs.docker.com/engine/installation/)


### Running vite
Use this command to run vite

```
docker run -v $(pwd):/srv -w /srv/resource -p 9000 -ti huli/web-frontend:vite vite --host --port 9000
```
Assuming that:
- Your source is located in `./resource` folder
- There's a `webpack.config.js` file inside `./resource` folder
- You configured webpack-dev-server to use port 9000
