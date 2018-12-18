# Introduction
- HTTP protocol is stateless- the server does not hang on to information between each request/response cycle.  Each request treated as a brand new entity and different requests are unaware of each other.
- Statelessness makes HTTP and the internet so distributed and difficult to control, but also the same ephemeral attribute that makes it difficult for web dev's to build stateful web apps.

## Sessions
With some help from the client (browser), HTTP can be made to act as if it were maintaining a stateful connection with server, even though its not.

One way to accomplish this is by having the server send some form of unique token to client, whenever a client makes request to server, client appends this token as part of request, allowing server to identify clients.
  - This token is called the **session identifier**  
  - passing `session id` back and forth creates sense of persistent connection between requests

This type of faux statelessness has several consequences
- First, every request must be inspected to see if it contains a session identifier
- Second, if it does have identifier, server must check to see if its still valid
  - Server needs to maintain some rules about session expiration and decide how to store its session data
- Third, server needs to retrieve the session data based on session id
- Finally, server needs to recreate the application state from the session data and send it back to client as a response

## Cookies
A Cookie is a piece of data that's sent from the server and stored in the client during a request/response cycle.  Cookies, or HTTP Cookies, are small files stored in the browser and contain the session information.  By default, most browsers have cookies enabled.

When you visit a website for the first time, the server sends session information and sets it in your browser cookie on your local computer.  Acxtual session data is stored on server.  Client side cookie is compared with server-side session data on each request to identify the current session.  This way, when you visit the same website again, your session will be recognized because of the stored cookie with its associated information.

Session ID is saved into a cookie in your browser- even if you turn off machine, your browser will remember the cookie.  That cookie is attached along with every future request you make to a given website.

With the Session ID being sent with every request, the server can now uniquely identify a client.  When a server received a request with a session ID, the server will look for the associated data based on that ID, and in that associated session data is where the server "remembers" the state for the client/session ID.

Session ID is unique and expires pretty quick.  If you log out, session ID info is gone.
- This implies that if we manually remove the session ID, then we have essentially logged out
- You can right click on cookies and delete them in dev tools

RECAP: session data is generated and stored on server-side and the session ID is sent to the client in the form of a cookie.

## AJAX

AJAX: Asynchronous JavaScript and XML
- Main feature is it allows browsers to issue requests and process responses without a full page refresh
- EX: if you're logged into facebook, the server has to generate initial page, which is a complext and expensive HTML page displayed by browser
- When AJAX is used, all requests sent from client are performed asynchronously, which just means the page doesn't refresh.
  - Even though every letter you type is issuing a new request, the responses are being processed by some callback
    - a `callback` is a piece of logic you pass on to some function to be exuectued after a certain event has happened
    - in this case, the callback is triggered when the response is returned
- **Main Point**:  Ajax requests are just like normal requests: they are sent to the server with all the normal components of an HTTP request and the server handles them just like any other request. The only difference is that instead of the browser refreshing and processing the response, the resonse is processed by a callback function, which is usually some client-side JavaScript code.

## Summary
- Techniques of web devs to mimic statefulness, despite having to work with the stateless protocol HTTP
- Cookies and sessions and how modern web apps remember state for each client
- Role of AJAX in displaying dynamic content in web apps