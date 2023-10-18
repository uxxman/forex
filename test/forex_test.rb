require 'test_helper'

class ForexTest < ActiveSupport::TestCase
  test 'it has a version number' do
    assert Forex::VERSION
  end

  test 'allows changing config values' do
    Forex.configure do |config|
      config.base_currency = 'USD'
    end

    assert Forex.config.base_currency == 'USD'
  end
end
