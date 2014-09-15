require 'omniauth'
require 'omniauth/strategies/oauth'
require 'multi_json'

module OmniAuth
  module Strategies
	class Garmin < OmniAuth::Strategies::OAuth
		option :name, 'garmin'

		option :client_options, {
			:site               => "https://connectapi.garmin.com",
			:request_token_path => "/oauth-service-1.0/oauth/request_token",
			:access_token_path  => "/oauth-service-1.0/oauth/access_token",
			:authorize_url      => "http://connect.garmin.com/oauthConfirm"
		}

      	def request_phase
        	puts authorize_params
        	super
      	end

		def authorize_params
	        super.tap do |params|
	          if request.params['oauth_callback']
	            params[:oauth_callback] = request.params['oauth_callback']
	          end
	        end
      	end
    end
  end
end