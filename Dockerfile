# Docker Hub: cmosetick/pushstate-server
# This image is alpine based

FROM mhart/alpine-node:6
MAINTAINER <cmosetick@gmail.com>

RUN \
apk --no-cache add supervisor && \
npm install -g pushstate-server && \
npm cache clean && \
mkdir -p /etc/supervisor/conf.d && \
mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor

# This is a base image used for other images to build on top of so I'm not adding a CMD or ENTRYPOINT
