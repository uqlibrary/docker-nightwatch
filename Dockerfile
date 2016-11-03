FROM node:latest

USER root

RUN \
    npm install -g nightwatch python curl --ignore-scripts --unsafe-perm --loglevel info && \
    groupadd -r docker && \
    useradd -r -g docker docker

COPY nightwatch.sh /opt/nightwatch.sh
RUN chmod +x /opt/nightwatch.sh

CMD /opt/nightwatch.sh
