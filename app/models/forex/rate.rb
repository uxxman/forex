module Forex
  class Rate < ApplicationRecord
    self.table_name = 'rates'

    validates :multiplier,
              presence: true,
              numericality: { greater_than: 0 }

    validates :currency,
              presence: true,
              uniqueness: true,
              length: { maximum: 5 },
              inclusion: { in: Forex.config.currencies }

    def self.index_by_currency
      all.to_h { |rate| [rate.currency, rate.multiplier] }.presence || { Forex.config.base_currency => 1.0 }
    end
  end
end
