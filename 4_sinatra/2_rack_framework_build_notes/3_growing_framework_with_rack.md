# Application Environment - env
- We have been working with application response within Rack app
- what is the point of `env`?
- if you inspect the `env` you might get the following:
    GATEWAY_INTERFACE : CGI/1.1
    PATH_INFO : /
    QUERY_STRING :
    REMOTE_ADDR : 127.0.0.1
    REMOTE_HOST : 127.0.0.1
    REQUEST_METHOD : GET
    REQUEST_URI : http://localhost:9595/
    SCRIPT_NAME :
    SERVER_NAME : localhost
    SERVER_PORT : 9595
    SERVER_PROTOCOL : HTTP/1.1
    SERVER_SOFTWARE : WEBrick/1.3.1 (Ruby/2.3.1/2016-04-26)
    HTTP_HOST : localhost:9595
    HTTP_CONNECTION : keep-alive
    HTTP_CACHE_CONTROL : max-age=0
    HTTP_UPGRADE_INSECURE_REQUESTS : 1
    HTTP_USER_AGENT : Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like – Gecko) Chrome/53.0.2785.143 Safari/537.36
    HTTP_ACCEPT : text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,/;q=0.8
    HTTP_ACCEPT_ENCODING : gzip, deflate, sdch
    HTTP_ACCEPT_LANGUAGE : en-US,en;q=0.8
    HTTP_COOKIE : _netflux_session=VTZoU1ZvVXlZV1MrQ3pTMHhlNXBSRGdpMFdXQXhrRFJnUGNMMEhhQmNLanp1aU9rb3pyQ3o2dGRE eVp0ZW5YTVJaSXBqZldIdWV1ZEtDRFdJWVo5b0FkMHRyZWVLVXVjR0lRdnV5dnl4VU01UWs0ZnBTbmlQc1Urb1g2ME1yU0pESkg0bGR2 bmwzR0h2bUt6a2xlQjlNNEpJNGtiOG1BQ2VkS0p5TWEvc1U0THdkNGtzbEtETmUrb1lDVHY5VWtKLS1oMnQ1cUlXcVJWcXZqTHpqWUNO L0JRPT0%3D—17bf5208879c831997c5c78c69895ded29aad26b
    rack.version : [1, 3]
    rack.input : #
    rack.errors : #
    rack.multithread : true
    rack.multiprocess : false
    rack.run_once : false
    rack.url_scheme : http
    rack.hijack? : true
    rack.hijack : #
    rack.hijack_io :
    HTTP_VERSION : HTTP/1.1
    REQUEST_PATH : /

This listing contains alll environment variables and information related to ur HTTP request for the `HelloWorld` application
- This info crucial for telling ours erver side code how to process request
- For example, look at `REQUEST_PATH` which may tell which resource this request is retrieving and what query parameters are being attached with request

## Routing: Adding in other pages to our application
Do add routing, add a case statement to original app file for `env['REQUEST_PATH']`
- code in what happens depending on results of each evaluation of case statement

# View Templates
We need a location in our application where we can store and maintain code related to what we want to display- this type of code is called a **view template**

View Templates separate files that allows us to do some pre-processingo n server side in a programming language (ruby, python, etc) and then translate programming code into a string to return to the client (usuall in HTML)

# ERB
- There are many view templating libraries and options, but Embedded Ruby, or ERB allows to to embed Ruby directly into HTML
- In our app, we'll be using ERB in conjunction with separate view template files- `.erb` files

To use ERB, we must
- `reuquire 'erb'`
- Create an ERB template object and pass in a string using special syntax that mixes Ruby with HTML
- Invoke ERB instance method `result` which will give us 100% HTML string
- special syntax for embedding ruby `<%=   %>` but there are two flavors
    - `<%=  %>` (has equal sign) will evaluate embedded Ruby code and include its return value in HTML output.  A method invocation would be a good candidate for this tag
    - `<%   %>` (has no equal sign) will only evaluate ruby code, but not incldue the return value in HTML output.  YOu'd use this tag for evaluating ruby but don't want to include its return value in final string.  A method definition would be a good use case for this tag

- ERB can also be used to process entire files, not just strings

# Adding in View Templates
- create `views` dir
- inside `views`, create file `index.erb`
- you can use ruby code in main app code

`template = File.read("views/index.erb")` and pass `template` around as a varirable
```ruby
when '/'
      template = File.read("views/index.erb")
      content = ERB.new(template)
      ['200', {'Content-Type' => 'text/html' },
      [content.result]]
```
# Cleaning up #call method