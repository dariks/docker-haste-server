FROM node:9.6.1-stretch
MAINTAINER Daniel Rippen <rippendaniel@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN export LANG=C.UTF-8 && \
    apt-get update && \
    apt-get install redis && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/seejohnrun/haste-server.git /hastebin

WORKDIR /hastebin

RUN npm install

EXPOSE 7777

CMD ["npm", "start"]
