Forex.configure do |config|
  config.api_key = 'test'

  # Google search engine domain to use
  config.base_currency = 'EUR'

  # Google search engine location code to use
  config.currencies = %w[EUR USD GBP CZK DKK HUF SEK CHF ISK].freeze
end