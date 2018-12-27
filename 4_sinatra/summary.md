# Summary

- Sinatra is a small web framework
- HTTP requests are handled by Sinatra by creating Routes for a path or set of paths
- Routes are created using methods named after the HTTP method to be handled, so a `GET` request is handled by a route defined using the sinatra `get` method.
-  View templates can be written in many templating languages, such as ERB. They provide a place to define the HTML display of a response outside of the route handling it.  TEmplating languages are usually better suited to describing plain HTML than just plain Ruby.
- a layout is a view template that surrounds a specific responses template.  They are used to provide shared HTML that is used by all views, and often include links to sytelsheets and JS files.
- Routes can specify parameters, by using colon followed by parameter name.  
- Code placed in a `before` block is executed before the matching route for every request
- View helpers are ruby methods that are used to minimize the amount of ruby code included in a view template.  These methods are defined with a helpers block in SInatra.
- A user can be sent to a new location in response to a request with redirection.  This is done in SInatra using the `redirect` method.  The redirection is accomplished by setting the Location header in the response.  The client looks at the URL in the location header and sends out a new HTTP GET request for the associated resource, which in turn navigates the client to that new location.
- The filesin a project can be identified as server-side or client-side code based on where they will be evaluated.
