# Summary

- State is data that persists over time
- The Session provides a way to store data that will persist between subsequent HTTP requests.  This data is associated with a specific user by storing a cookie in their browser.  In Sinatra, the session data itself is also stored in this cookie, but is configurable and not always the case with other frameworks
- Data that is submitted to the server often needs to be validated to ensure it meets the requirements of the app.  We built server-side validation as we performed validation logic on server.
- Messages that need to be displayed to user on their next request and the deleted can be stored in session- this kind of message often referred to as a flash message.
- Content from within a view template can be stored under a name and retrieved later using `content_for` and `yield_content`
- `GET` requests should only request data.  Any request that modifies data should be over `post` or another non_get method
- Web browsers don't support request methods other than `get` or `post` in HTML forms, so there are times when a developer has to use `post` even when another method would be more appropriate.
- view helpers provide a way to extract code that determines what HTML markup is generated for a view
