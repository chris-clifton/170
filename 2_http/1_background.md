# HTTP Book

## HTTP 
HTTP (Hypertext Transfer Protocol) invented by Tim Berners-Lee
- a system of rules, a protocol, that serve as a link between applications and the transfer of hypertext documents
- simple model where client makes request to server and waits for response AKA request response protocol

Resource
- Resource is a generic term for things you interact with on the Internet via a URL
- Includes images, videos, web pages and other files
- Resources are not limited to files and web pages- can also be software

Statelessness
- A protocol is said to be stateless when its designed in such a way that each request/response pair is completely independent of the previous one
- in the context of http, it means a server does not need to hang on to info, or state, between requests
- as a result, when a request breaks en route to the server, no part of the system has to do any cleanup
- since HTTP is inherently stateless, web developers have to work hard to simulate a stateful experience in web applications

## What is a URL?
URL = Uniform Resource Locator
- a URL is most frequently used part of general concept of URI- Uniform Resource Identifier, which specifies how resources are located

## URL Components: 5 main parts
Example URL
```ruby
http:///www.example.com:88/home?item=book
```


`http`  
**URL SCHEME**.  
It always comes before the colon and two forward slashes and tells the web client how to access the resource.  In this case, it tells the web client to use HTTP to make a request.

`www.example.com`  
**HOST**   
It tells the client where the resource is hosted or located.

`:88`  
**PORT**  
The Port or port number.  Only required if you want to use a port other than the default.  Port 80 handles HTTP requests.

`/home/`  
**URL PATH**  
Shows what local resource is being requested.  This part of the URL is optional

`?item=book`  
**QUERY STRING**  
The query string, which is made up of query parameters, is used to send data to the server.  This part of the url is also optional.

Sometimes the path can point to a specific resource on the host.

Sometimes we may want to include a port number which the host uses to listen to HTTP requests.  Unless a different port is specified, port 80 will be used by default in normal HTTP requests.  

## Query Strings and Query Parameters

```ruby

http://www.example.com?search=ruby&results=10
```
| Query String Component | Description |
|:-----------------------|-------------|
|?| This is a reserved character that marks the start of the query string |
|search = ruby| This is a parameter name/value pair|
|& | This is a reserved character used to separate parameters when adding more parameters to the query string|
|result = 10| This is also a parameter name/value pair|

Because query strings are passed in through the URL, they are only used in HTTP GET requests

Limits of Query Strings
- maximum length
- name/value pairs used in query strings are visible in URL so sensitive information is discouraged
- space and special characters cannot be used

## URL Encoding

URLs are, by default, only able to accept certain ASCII characters.  Unsafe or reserved characters not included in this set have to be converted or encoded to conform to this format.

URL encoding serve the purpose of replacing these non-conforming characters with a % symbol followed by two hexadecimal digits that represent the ASCII code of the character.

Characters must be encoded if: 
- They have no corresponding chracter within ASCII char set
- The use of the character is unsafe (% for example)
- Character is reserved for special use within URL scheme (/ ? : @ &)

Safe characters:
- Alpha numeric characters
- Special characters $ - + . + ! ' ( ) " ,