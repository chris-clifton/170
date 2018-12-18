# Summary
- Although not something you'd normally do, it is possible to interact with HTTP manually because its a text based protocol
- HTTP is built on top of TCP, which is a network layer that handles comm between two computers
- URLS are made up of many components: a protocol, host, port, path, and parameters
- Query parameters are parameters included in URL.  Appeded to path using `?`.  Specified in `key=value`
- Params after first are appended to URL using `&`
- HTTP is stateless, which  means that each request is handled separately by the server
  - By carefully crafting URLs and parameters, stateful interactions can be built on top of HTTP
