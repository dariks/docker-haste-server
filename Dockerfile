FROM node:9.6.1-stretch
MAINTAINER Daniel Rippen <rippendaniel@gmail.com>

RUN git clone https://github.com/seejohnrun/haste-server.git /hastebin

WORKDIR /hastebin

RUN npm install

EXPOSE 7777

CMD ["npm", "start"]
