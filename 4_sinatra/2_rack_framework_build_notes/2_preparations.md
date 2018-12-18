# Preparations
- building a simple web application

## What makes a Rack Application?

- Rack is a specification for connecting our app code to web server, and also our app to the client
- It sets and allows us to utiliez a standard methodology for communicating HTTP requests and responses between client and server
- Because of this, Rack has some very specific conventions in place you need to make your Ruby code into a Rack application

  - Create a "rackup" file- this is a config file that specifies what to run and how to run it.  Rackup file uses extension `.ru`
  - The rack app we use in rackup file must be an Ruby object that respondes to method `call(env)`.  `call(env)` takes one argument, environment variable for application
  - `call` method always returns an array with these three elements:
    - Status Code- (responds to to_i)
    - Headers- (key value pairs inside a hash)
    - Response Body- obejct can be anything as long as it responds to `each` method- it just should never be a String by itself, it must yield a string value

  ## Creating Rackfile
- By default, Rack will expect it to be called `config.ru`
- Place this file in root directory
- `require_relative 'your_file_goes_here'
- `run your_file_goes_here.new`

Run Command
`bundle exec rackup config.ru -p 9595`
- `-p` flag allows us to specify which port we want our app to run on
- Uses 9292 by default with `rackup`

- in a different terminal, try to ping server
`curl -X GET localhost:9595 -m 30 -v`
