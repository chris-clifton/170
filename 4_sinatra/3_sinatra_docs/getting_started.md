# Getting Started
- Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort
- test.rb is formatted as a quick start file for reference

## Routes
- In Sinatra, a route is an HTTP method paired with a URL-matchig pattern.  Each route is associated with a block:
```ruby
get '/' do
  .. show something ..
end

post '/' do
  .. create something ..
end

put '/' do
  .. replace something ..
end

patch '/' do
  .. modify something ..
end

delete '/' do
  .. annihilate something ..
end

options '/' do
  .. appease something ..
end

link '/' do
  .. affiliate something ..
end

unlink '/' do
  .. separate something ..
end
```
- Routes are matched in the order they are defined.  First route to match the request is invoked.
- Routes with trailing slashes are different than ones without