require 'omniauth-oauth2'
require 'omniauth/mayday/config'

module OmniAuth
  module Strategies
    class Mayday < OmniAuth::Strategies::OAuth2
      # change the class name and the :name option to match your application name
      option :name, :mayday
      
      option :client_options, {
        site: OmniAuth::Mayday::Config.instance.settings[:auth_server_url],
        authorize_url: OmniAuth::Mayday::Config.instance.settings[:auth_server_path]
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"]
          # and anything else you want to return to your API consumers
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/users/info').parsed
      end
    end
  end
end