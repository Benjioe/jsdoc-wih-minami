FROM benjioe14/jsdoc-with-rhino AS jsdoc

RUN git clone https://github.com/nijikokun/minami.git

COPY ./javascript /usr/src/app
RUN ["./jsdoc/jsdoc", "./app", "-r", "-d", "./app/out", "-t", "./minami"]

FROM nginx
COPY --from=jsdoc /usr/src/app/out /usr/share/nginx/html