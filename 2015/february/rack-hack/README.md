# Quick Rack introduction

Rack is the interface underpinning most application server <=> web framework
interaction in ruby. Originally conceived to be as simple as possible it
provides a very simple API.

# What is a Rack application

A Rack application is any object responding to `call` with the environment as
the parameter, and responds with an Array of [status, headers, body]

  def call env
    [200, {}, []]
  end

# The body

The body of a response can be any object responding to `each`, for example `[]`,
while in previous version it could also be a `String` this is no longer true, if
you want to respond with a plain `String` you need to wrap it in `StringIO`

  def call env
    body = StringIO.new("Hello world!")
    [200, {"Content-Type" => "text/plain"}, body]
  end

# Middleware

Middleware is the way to enhance a Rack application by injecting code in the
Stack. A Middlware is again very simple `class` that wraps up a Rack
Application.

  def NoopWare
    def initialize app
      @app = app
    end
    ...
  end

# Calling a Middleware

A Middlware is also a Rack Application, so it needs to respond to `call`, and
return a well formatted response Array.

  def call env
    @app.call
  end




