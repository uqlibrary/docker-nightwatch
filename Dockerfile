FROM node:latest

USER root

RUN npm install -g nightwatch python curl --ignore-scripts --unsafe-perm --loglevel info && \
    groupadd -r docker && useradd -r -g docker docker
