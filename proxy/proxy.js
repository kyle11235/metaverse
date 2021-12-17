var express = require('express');
var request = require('request');
var Buffer = require('buffer/').Buffer;

var app = express();

app.use('/', function (req, res) {
    let url = req.query.url;
    if(url.endsWith('?list')){
        url = url + '&deep=0&listFolders=1&mdTimestamps=1'
    }

    const username = '';
    const password = '';
    //let auth = "Basic " + Buffer.from(username + ":" + password).toString("base64");

    let auth = process.env.ART_API_KEY

    console.log('real url=' + url);

    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
    res.setHeader('Access-Control-Allow-Credentials', true);
    res.setHeader('Content-Type', 'application/json;charset=UTF-8');

    if (req.method === 'OPTIONS') {
        console.log('\nOPTIONS method.');
        res.send('');
    } else {
        var resProxy = res;
        var options = {
            url: url,
            headers : {
                "X-JFrog-Art-Api" : auth
            }
        };
        req.pipe(request(options)).pipe(resProxy);
    }

});
console.log('running at 8080...');
app.listen(process.env.PORT || 8080);


// npm install express
// npm install request
// node proxy.js
// http://localhost:8080?url=realUrl