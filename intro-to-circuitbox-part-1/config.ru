require "rack"

App = lambda { |env|
  sleep 10
  [200, {'Content-Type' => 'text/plain'}, ["I might be slow"]]
}

run App


