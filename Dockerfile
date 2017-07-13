FROM node:8.1.4

MAINTAINER Patrick Roza <contact@patrickroza.com>

# NPM 5.2, 5.1 and 5.0 bring significant improvements in performance and reliability
WORKDIR /npm-tmp
RUN npm install npm@^5.2.0
RUN rm -rf /usr/local/lib/node_modules/npm
RUN mv node_modules/npm /usr/local/lib/node_modules/npm

WORKDIR /
