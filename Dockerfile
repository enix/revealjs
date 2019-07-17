FROM node:8

EXPOSE 8000 35729

WORKDIR /
RUN git clone --depth 1 https://github.com/hakimel/reveal.js.git

WORKDIR /reveal.js
RUN npm install

COPY enix/ enix/
COPY index.html custom.css ./

CMD ["npm", "start"]