// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var window = Ti.UI.createWindow({
	backgroundColor:'white'
});


var opengl = require('ti.opengl');
Ti.API.info("module is => " + opengl);

var surface = opengl.createSurfaceView();
window.add(surface);
window.open();


