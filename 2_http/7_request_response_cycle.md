# Request Response Cycle Video Notes

## Requests
Client sends server a request: includes 6 main parts
Required parts: HTTP Method, path, and host.  Parameters, headers, body are optional.
  - Method: GET
  - Path: /tasks
  - Parameters: ?due=today
  - Headers:
  - Body
Does not include domain name (with HTTP1.0) but does with HTTP1.1 and HTTP2.  This header is typically set by client automatically based on URI requested by user.
Path and Parameters are included in one line in request, we just break them up here so theyre easier to read.

A GET request should only retrieve content from server (read-only operation)
A POST request involves changing the values that are stored on the server (HTML forms)

After server received the request, its going to perform some kind of work.
  - verify user session
  - load tasks from database
  - render HTML

Once server has done these things, its ready to send a response back to the client.

## Responses
Status code is required- headers and body are optionl.
  - Status: 200 OK
  - Headers: Content-Type: text/html
  - Body: <html></html>

Headers are a sort of a meta-data for contents of response
Headers tell client how to render type of response (browsers expect HTML)
Body is bulk of data being sent- going to contain all HTML for webpage, or data for audio file for a song




