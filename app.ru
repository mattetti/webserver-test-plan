require 'rack'

hello_world = proc do |env|
  [200, { "Content-Type" => "text/html" }, ["hello world\n"]]
end

class PostAnalyzer
  def call(env)
    params = Rack::Request.new(env).params
    response = params.map do |k,v|
      if k == 'file' && v[:tempfile]
        "#{k} => File Contents: #{v[:tempfile].read}"
      else
        "#{k} => #{v.inspect}"
      end
    end.join("\n") + "\n"
    [200, { 'Content-Type' => 'text/plain' }, response]
  end
end

map '/' do
  run hello_world
end

map '/post' do
  run PostAnalyzer.new
end

map '/upload' do
  run PostAnalyzer.new
end