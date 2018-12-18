
# part of Ruby that includes classes to create servers, interact with them, and perform other networking tasks
require "socket"

# Creating a server on localhost with the port 3003- web browsers usually operate on 80 (http) or 443 (https)
server =  TCPServer.new("localhost", 3003)
loop do
  client = server.accept

  request_line = client.gets
  puts request_line

  client.puts "HTTP/1.1 200 OK\r\n\r\n" request_line
  client.close
end