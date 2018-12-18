# Request Methods

In Chrome Dev tools, right click, inspect.

**Method Column**  
Information displayed in the **Method** column is known as HTTP Request Method.  Basically a verb that tells server what action to perform on a resource.

**Status Column**  
Shows response status for each request.  Every request gets a response- even if the response is an error, thats still a response (though they can technically also time out)

# GET Requests

Get requests appear in a link or address bar of browser.  When you type in an address, you are making a `GET` request by asking browser to go retrieve the resource at that address.

## Primary Concepts
- GET requests are used to retrieve a resource, and most links are GETs.
- Response from a GET request can be anything, but if its HTML, and that HTML references other resources, your browser will automatically request those referenced resources- a pure HTTP tool will not

# POST Requests

POST is essential HTTP request method to send or submit data to a server.
POST is used when you want to initiate some action on server, or send data to server.

POST requests help allow us to send usernames and password to servers without exposing them in the URL the way a GET request would.  It also allows us to get around the query string size limitation of GET requests.

POST requests allow us to send much larger forms of info to server.

# HTTP Headers

HTTP Headers allow client and server to send additional info during request/response HTTP cycle.  headers are colon-separated name-value pairs taht are sent in plain text.  By using Inspector, we can see these headers.

## Useful Request Headers
|Field Name | Description | Example |
|:----------|:------------|:--------|
|Host| The domain name of server | Host: www.reddit.com |
|Accept Language | List of acceptable languages | Accept-Language: en=US,en:q=0.8|
|User-Agent | A string that identifies the client | User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.101 Safari/537.36 |
|Connection | Type of connection client would prefer | Connection: keep-alive|

# Summary

Should be comfortable with:
- using inspector to view http requests
- making get/post req's with an HTTP tool

Important concepts to understand about HTTP request are:
- http method
- path 
- headers
- message body( for POST requests)