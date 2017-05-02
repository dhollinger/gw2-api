require 'faraday'
require 'json'

module Gw2
  module Api
    class Connection

      def initialize(token)
        @token = token
        @connection = Faraday.new('https://api.guildwars2.com/v2')
      end

      def get(endpoint)
        @connection.get endpoint, access_token: @token
      end
    end
  end
end