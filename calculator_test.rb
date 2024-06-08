require "test/unit"
require_relative './calculator'

class CalculatorTest < Test::Unit::TestCase
  def setup
    # Create an instance of the Calculator class
    @calculator = Calculator.new
  end

  def test_add_empty_string
    result = @calculator.add("")
    # Check the result if it is equal to 0
    assert_equal 0, result
  end

  def test_add_single_digit_string
    result = @calculator.add("1")
    # Check the result if it is equal to 1
    assert_equal 1, result
  end

  def test_add_multi_digit_string
    result = @calculator.add("1,5")
    # Check the result if it is equal to 6
    assert_equal 6, result
  end

  def test_add_string_with_newlines
    result = @calculator.add("1\n2,3")
    # Check the result if it is equal to 6
    assert_equal 6, result
  end

  def test_add_string_with_delimeters
    result = @calculator.add("//;\n1;2")
    # Check the result if it is equal to 3
    assert_equal 3, result
  end
  
  def test_add_avoid_negative_numbers
    result = @calculator.add("-2,1,-5")
    # Check result should return an error message with negative numbers.
    assert_equal "Input data contains the following negative numbers ---- -2,-5 ----, please try again.", result
  end

end
