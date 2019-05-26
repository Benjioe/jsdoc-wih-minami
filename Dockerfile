FROM jsdoc-rhino

RUN git clone https://github.com/nijikokun/minami.git

CMD runjsdoc && ./jsdoc/jsdoc /usr/src/app/scripts -d $OUT_DIRECTORY -T $README -t minami