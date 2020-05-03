require 'webrick'

class Simple < WEBrick::HTTPServlet::AbstractServlet
  def do_GET request, response
    response.status = 200
    response['Content-Type'] = 'text/plain'
    response.body = 'Hello, World!'
  end
end

server = WEBrick::HTTPServer.new :Port => 8080
server.mount '/', Simple

trap 'INT' do
  server.shutdown
end

server.start
