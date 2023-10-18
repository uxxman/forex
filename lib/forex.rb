require 'forex/engine'
require 'forex/client'
require 'forex/version'
require 'forex/configuration'

module Forex
  def self.config
    @config ||= Configuration.new
  end

  def self.configure
    yield config
  end
end
