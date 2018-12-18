# Rack
A library that helps connecting to WEBrick- a generic interface to help app developers connect to web servers, so it works with many other servers besides WEBrick

## What is Rack?
Rack is a web server interface that provides a fluid API for creating web applications- many frameworks are Rack based (Sinatra and Rails)
  - They are Rack based because they adhere to the Rack interface to easily communicate between server and client
  - You can think of Rack as a protocol or specification (though its slightly more than that)

Developers wanted a way to abstract away the mundane work of connecting and communicating with the web serving and content generating tiers of Ruby web apps
  - Were constantly reinventing the wheel by reconfiguring every time they connected to a new server

Rack gives developers a consistent interface when working with Rack compatible servers, effectively giving web server developers and app framework developers a common language

