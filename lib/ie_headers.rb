require "ie_headers/version"

module IEHeaders

  class IEHeaders
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)
      #add header that disable Internet Explorer Compatability Mode to the response
      headers['X-UA-Compatible'] = 'IE=edge'
      [status, headers, response]
    end
  end

end