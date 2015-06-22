module Rack
  
  # Add P3P policy headers for cross-browser cookies on IE
  # Classily borrowed from rack-p3p
  class CookieMonster
    IE_POLICY = 'CP="NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"'
    SAFARI_POLICY = 'CP="IDC DSP COR CURa ADMa OUR IND PHY ONL COM STA"'
    
    def initialize(app)
      @app = app
    end

    def call(env)
      response = @app.call(env)
      insert_p3p(response, IE_POLICY)
      insert_p3p(response, SAFARI_POLICY)
    end

    private
      def insert_p3p(response, policy)
        if response.first == 304
          response[1].delete('Set-Cookie')
        else
          response[1].update('P3P' => policy)
        end
        response
      end
  end
end