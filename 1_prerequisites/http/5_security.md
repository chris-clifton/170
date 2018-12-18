# Security

The same attributes that make HTTP so difficult to control also make it difficult to secure

## Secure HTTP (HTTPS)
- As client and server send requests and responses to each other, all information in both requests and responses are being sent as strings.  If a hacker was attached to same network, they could employe a packet sniffer and read messages.  They could, in theory, jack your session ID and thereby be automatically logged in without even having access to your username or password.

With HTTPS, every request/response is encrypted before being transporrted on network.  

HTTPS sends messages through cryptographic protocol called TLS.  Used to use SSl (Secure Sockets Layer).  They use certificates to commmunicate with remote servers and exchange security keys before data encryption happens.  You can inspect certificates by clicking padlock icon in browser bar.

## Same Origin Policy
Important concept that permits resources originating from same site to access each other with no restrictions, but prevents acces to documents/resources on other sites.  In other words, it prevents scripts from one site manipulating documents from another site.

Documents in the same **origin** must have same protocol, hostname, and port number.  

While secure, this is very cumbersome for web devs who have legit needs for cross domain content access- so Cross-origin resource sharing (CORS) was developed.  CORS is a mechanism that allows resources from one domain to be requested from another domain, bypassing the same-origin policy.  CORS works by adding new HTTP headers, which allow servers to serve resources to permitted origin domains.

This is an important guard against session-hijacking attacks and serves as cornerstone of web app security.

## Session Hijacking
If an attacker gets hold of session ID, both attacker and user now share same session and both can access the web app.  In session hijacking, the user won't even know an attacker is accessing his or her session without ever knowing username or password.

Counter Measures
- One popular way to solve session hijacking is resetting sessions
  - With authentication systems, this means a succesful login must render an old session id invalid and create a new one
  - With this in pl ace, on the next request, the victim will be required to authenticate.  At this point, the altered session id will change and attacker will lose access.
  - Most websites implement this technique by making sure users authenticate whenever entering potentially sensitive area: charging CC or deleting an account

- Another solution is by setting an expiration time on sessions

- Use HTTPS across entire app to minimize chance an attacker gets session id

## Cross-Site Scripting (XSS)
This type of attack happens when you allow users to input HTML or JavaScript that ends up being displayed by site directly
- In a form, a comment section as an example, an attacker could add raw HTML or JS into text area and submit it to the server
- If server side code doesn't do any sanitation of input, the user input will be injected into page contents and browser will interpret the HTML and JS and execute it
  - Attackers can craft ingeniously mlicious HTML and JS and be very destructive to both server and future visitors of a page

Counter Measures
- Always sanitize user input
  - Eliminate problematic input such as <script> tags, or disallow HTML/JS input altogether in favor of safer format like Markdown
- Escape all user input data when displaying it.  If you must allow users to input HTML and JS, then when you print it, make sure you escape it out so the browser does not interpret it as code
 