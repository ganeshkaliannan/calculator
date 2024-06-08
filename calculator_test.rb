require "test/unit"
require_relative './calculator'

class CalculatorTest < Test::Unit::TestCase
  def setup
    # Create an instance of the Calculator class
    @calculator = Calculator.new
  end

end
