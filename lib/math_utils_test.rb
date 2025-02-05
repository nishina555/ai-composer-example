# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'math_utils'

class MathUtilsTest < Minitest::Test
  def test_square
    assert_equal 25, MathUtils.square(5)
    assert_equal 0, MathUtils.square(0)
    assert_equal 16, MathUtils.square(-4)
  end

  def test_square_root
    assert_equal 3.0, MathUtils.square_root(9)
    assert_equal 0.0, MathUtils.square_root(0)
    assert_raises(ArgumentError) { MathUtils.square_root(-1) }
  end

  def test_factorial
    assert_equal 1, MathUtils.factorial(0)
    assert_equal 1, MathUtils.factorial(1)
    assert_equal 120, MathUtils.factorial(5)
    assert_raises(ArgumentError) { MathUtils.factorial(-1) }
  end
end
