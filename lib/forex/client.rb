require 'net/http'

module Forex
  class Client
    class ApiError < StandardError; end

    BASE_URL = 'https://api.freecurrencyapi.com/v1'.freeze

    def rates
      uri = URI("#{BASE_URL}/latest")
      uri.query = URI.encode_www_form(params)
      response = Net::HTTP.get_response(uri)

      raise ApiError, response.body unless response.is_a?(Net::HTTPSuccess)

      JSON.parse(response.body)['data']
    end

    private

    def params
      {
        apikey: Forex.config.api_key,
        base_currency: Forex.config.base_currency,
        currencies: Forex.config.currencies.join(',')
      }
    end
  end
end
