require 'minitest/autorun'
require_relative 'calculator'

class CalculatorTest < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add
    assert_equal 15, @calculator.add(10, 5)
    assert_equal 0, @calculator.add(-5, 5)
  end

  def test_subtract
    assert_equal 5, @calculator.subtract(10, 5)
    assert_equal -10, @calculator.subtract(-5, 5)
  end

  def test_multiply
    assert_equal 50, @calculator.multiply(10, 5)
    assert_equal -25, @calculator.multiply(-5, 5)
  end

  def test_divide
    assert_equal 2, @calculator.divide(10, 5)
    assert_equal -1, @calculator.divide(-5, 5)
    assert_raises(ArgumentError) { @calculator.divide(10, 0) }
  end
end
