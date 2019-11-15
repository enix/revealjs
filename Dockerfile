FROM node:8 as develop

EXPOSE 8000 35729

WORKDIR /
RUN git clone --depth 1 https://github.com/hakimel/reveal.js.git

WORKDIR /reveal.js
RUN npm install

COPY enix/ enix/
COPY resources/ resources/
COPY index.html custom.css ./

CMD ["npm", "start"]

FROM develop as build

RUN npm build

FROM nginx as run

COPY --from=build /reveal.js /usr/share/nginx/html