FROM node:0.10.40
MAINTAINER AnthoDingo <lsbdu42@gmail.com>

RUN git clone https://github.com/seejohnrun/haste-server.git /hastebin

WORKDIR /hastebin

RUN npm install

EXPOSE 7777

CMD ["npm", "start"]
