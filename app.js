/////// variable definitions ////////
var app;
var port = 8001;

//////// load dependencies ////////
//webserver framework
var express = require('express');

var vhost = require('vhost');
//Compression for gzip Compression
var compression = require('compression');

function createVirtualHost(domainName, dirPath) {
  return vhost(domainName, express.static(dirPath));
}

////// app configuration ////////
app = express();

//Create the virtual hosts
var internIp = createVirtualHost("127.0.0.1","visualizer/");
var localhost = createVirtualHost("localhost","visualizer/");
// create the static site hosting for each page
sites =[internIp, localhost];
for(var i = 0; i< sites.length;i++){
	app.use(sites[i]);
}


//enable the port that the app is listening on
app.listen(port, function () {
  console.log('Example app listening on port ' + port);
});
