require "faraday"

connection = Faraday.new

p connection.get("http://localhost:9292").body
