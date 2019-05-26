# JSdoc with Rhino scripts in Docker
Jsdoc-with-minami is a docker image who generate jsdoc 3.3.3 html documentation with the minami template

## Usage
### Linux (ubuntu)
Create a directory with some JavaScript file inside.
`mkdir ~/jsdoc && echo "/** a test function */function test() {}" > ~/jsdoc/test.js` 

Launch the image and map this directory to */usr/src/app*.
`sudo docker run -v ~/jsdoc:/usr/src/app jsdoc-with-minami`

The generate html is saved in *D:\jsdoc\out*, open it in a browser.
`sensible-browser ~/jsdoc/out/index.html`


### Windows (powershell)
Create a directory with some JavaScript file inside.
`mkdir c:\jsdoc; echo "/** a test function */function test() {}" > C:\jsdoc\test.js` 

Launch the image and map this directory to */usr/src/app*.
`docker run -v c:/jsdoc:/usr/src/app jsdoc-with-minami`

The generate html is saved in *D:\jsdoc\out*, open it in a browser.
`start D:\jsdoc\out\index.html`


### Configure
You can replace the default jsdoc parameters with your own by putting them a the end of the docker command line. Here we add a readme file: 
`docker run -v c:/jsdoc:/usr/src/app jsdoc-with-minami -c ./app -r -t ./minami -R /usr/src/app/README.md`

All parameters are describe on the [jsdoc documentation page](https://jsdoc.app/about-commandline.html)

## Questions And Answers
**What's Jsdoc ?**
Jsdoc is a convention to document JavaScript code. It include a tool to generate html documentation.

- [Jsdoc documentation](https://jsdoc.app/)
- [github page](https://github.com/jsdoc/jsdoc)

**Why minami ?**
Minami is the only official template working on the 3.3.3 version.

- [github page](https://github.com/Nijikokun/minami)
