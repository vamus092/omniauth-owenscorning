require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Owenscorning < OmniAuth::Strategies::OAuth2
      # change the class name and the :name option to match your application name
      option :name, :owenscorning

      option :client_options, {
                                :authorize_url => "/oauth/authorize"
                            }

      uid {
        raw_info["uid"]
      }

      info do
		  	raw_info
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me').parsed
      end
    end
  end
end
