require 'omniauth-oauth'
require 'multi_json'


module OmniAuth
  module Strategies
    #
    # Authenticate to Rdio via OAuth and retrieve basic user information.
    # Usage:
    #    use OmniAuth::Strategies::Garmin, 'consumerkey', 'consumersecret'
    #
    class Garmin < OmniAuth::Strategies::OAuth

		def initialize(app, consumer_key = nil, consumer_secret = nil, options = {}, &block)
		  opts = {
		    :site               => "https://connectapi.garmin.com",
		    :request_token_path => "/oauth-service-1.0/oauth/request_token",
		    :access_token_path  => "/oauth-service-1.0/oauth/access_token",
		    :authorize_url      => "http://connect.garmin.com/oauthConfirm"
		  }
		  super(app, :garmin, consumer_key, consumer_secret, opts, options, &block)
		end

    end
  end
end