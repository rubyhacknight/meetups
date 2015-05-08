require "faraday"
require "circuitbox/faraday_middleware"

Fallback = Struct.new(:body)

connection = Faraday.new do |c|
  c.use Circuitbox::FaradayMiddleware, default_value: Fallback.new("I'm fast but dead")
end

p connection.get("http://localhost:9292").body
