FROM node:8

EXPOSE 8000

WORKDIR /
RUN git clone --depth 1 https://github.com/hakimel/reveal.js.git

WORKDIR /reveal.js

RUN npm install

CMD ["npm", "start"]