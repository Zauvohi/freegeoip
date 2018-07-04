require 'json'
require 'uri'
require 'net/http'

module Freegeoip
  class Request
    ENDPOINT = "http://api.ipstack.com/"
    FORMAT = 'json'
    ACCESS_KEY = ENV['IPSTACK_ACCESSS_KEY']

    attr_reader :remote

    def initialize(remote)
      @remote = remote
    end

    def get
      uri = URI(ENDPOINT + remote + "?access_key=#{ACCESS_KEY}&output=#{FORMAT}")
      res = Net::HTTP.get(uri)

      JSON.parse(res)
    end
  end
end
