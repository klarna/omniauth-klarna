require 'hashie/mash'
require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Klarna < OmniAuth::Strategies::OAuth2
      PROVIDER_URL = 'https://merchants.klarna.com'
      CLIENT_OPTIONS = { site: PROVIDER_URL, authorize_url: '/oauth/authorize', token_url: '/oauth/access_token' }

      option :name, 'klarna'

      option :client_options, CLIENT_OPTIONS

      uid do
        raw_info['user']['id'] || raw_info['user']['email']
      end

      info do
        {
          name: raw_info['user']['id'],
          email: raw_info['user']['id']
        }
      end

      extra do
        { 'raw_info' => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/oauth/token').parsed
      end
    end
  end
end
