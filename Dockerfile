# Docker Hub: cmosetick/pushstate-server

FROM node:6.9.1
MAINTAINER <cmosetick@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN \
apt-get update && \
apt-get install -yqq supervisor && \
apt-get autoclean && \
apt-get clean && \
rm -rf /var/cache/apt/* && \
npm install -g pushstate-server && \
npm cache clean

# This is a base image used for other images to build on top of so I'm not adding a CMD or ENTRYPOINT
