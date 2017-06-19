require_relative '../config/initializer'

class << DatabaseRecord
  def environment
    :test
  end
end

require 'db/seeds'

require_relative 'test_helper'
include TestHelper
Dir['test/*/*.rb'].each { |file| require file }

warn "\n\nAll tests passed"
