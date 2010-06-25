require 'rack'

app = proc do |env|
  [200, { "Content-Type" => "text/html" }, ["hello world\n"]]
end

run app