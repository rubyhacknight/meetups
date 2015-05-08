require "securerandom"

class App

  def call env
    [200, {"Content-Type" => "text/plain"}, StringIO.new("Hello world!")]
  end

end

class Tracking

  def initialize app
    @app = app
  end

  def call env
    env = env.merge "request_tracking_token" => SecureRandom.hex
    status, headers, response = @app.call env
    headers = headers.merge "X-Request-Tracking-Token" => env["request_tracking_token"]
    [status, headers, response]
  end
end
