require 'webrick'
require 'json'

class Simple < WEBrick::HTTPServlet::AbstractServlet
  def do_GET request, response
    response.status = 200
    response['Content-Type'] = 'application/json'
    response.body = "{}"
  end
end

server = WEBrick::HTTPServer.new :Port => 8080
server.mount '/', Simple

trap 'INT' do
  server.shutdown
end

server.start

__END__
