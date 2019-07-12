FROM benjioe14/jsdoc-with-rhino:8

RUN git clone https://github.com/nijikokun/minami.git

CMD ["./app", "-r", "-d", "./app/out", "-t", "./minami"]
