# Intro

- Mental model of HTTP and server-side development crucial- need to know more than HTTP book
- Must undestand where you are at the higher level- ability to "zoom in" to the details while also being able to recognize where you are in the larger picture is critical to web development

# Zoomed in view of Server

Web Server
- typically a server that responds to static assets: files, images, css, javascript, etc.  These requests dont require any data processing, so can be handled by a simple web server

Application Server
- typically where application or business logic resides and is where more complicated requests are handled.  This is where your server-side code lives when deployed
- will often consult a persistent "data store", like a relational database, to retrieve or create data.  Data stores can be simple files, key/value stores, document stores, and many other variations, as long as it can save data in some format for later retrieval and processing.

# Zoomed in HTTP over TCP/IP
- HTTP relies on TCP/IP connections (most of the time, could also be UDP)
  - HTTP is an application layer protocol- a convention of agreements between two parties
  - TCP/IP slightly more complicated because it represents the lower layers in communication stack
    - Basically a large set of protocols that governs howt he systems should communicate with each other over the internet (collectively known as OSI model: open systems Interconnection model)
- HTTP uses TCP/IP under the hood as the transport and network layers- its actually TCP/IP doing all the heavy lifting and ensuring the request/response cycle gets completed between your browser and the server