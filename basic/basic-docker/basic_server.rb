require 'webrick'
require 'json'

class Simple < WEBrick::HTTPServlet::AbstractServlet
  def do_GET request, response
    if %w(/ /readiness /liveness).member?(request.path_info)
      response.status = 200
      response['Content-Type'] = 'application/json'
      response.body = "{}"
    else
      response.status = 404
    end
  end
end

server = WEBrick::HTTPServer.new :Port => 8080
server.mount '/', Simple

trap 'INT' do
  server.shutdown
end

server.start

__END__
