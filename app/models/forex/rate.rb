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
  end
end
