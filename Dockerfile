FROM node:8.6.0-alpine

COPY ./retirejs /retirejs
WORKDIR /retirejs
RUN npm install

RUN mkdir output
VOLUME [ "/app", "/retirejs/output" ]

USER node

ENTRYPOINT [ "/retirejs/node_modules/.bin/retire", "--path", "/app", "--outputpath", "/retirejs/output/retirejs.out" ]
CMD [ "--outputformat", "json", "--includemeta" ]
