module Forex
  class ImportRatesJob < ApplicationJob
    def perform
      client = Forex::Client.new

      client.rates.each do |currency, multiplier|
        rate = Forex::Rate.find_or_initialize_by(currency:)
        rate.multiplier = multiplier
        rate.save
      end

      Forex::Rate.where.not(currency: Forex.config.currencies).delete_all
    end
  end
end
