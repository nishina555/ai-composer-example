# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'number_utils'

class NumberUtilsTest < Minitest::Test
  def test_even?
    assert NumberUtils.even?(2)
    assert NumberUtils.even?(4)
    refute NumberUtils.even?(1)
    refute NumberUtils.even?(3)
  end

  def test_prime?
    assert NumberUtils.prime?(2)
    assert NumberUtils.prime?(3)
    assert NumberUtils.prime?(5)
    assert NumberUtils.prime?(7)
    refute NumberUtils.prime?(1)
    refute NumberUtils.prime?(4)
    refute NumberUtils.prime?(6)
  end

  def test_sum_range
    assert_equal 15, NumberUtils.sum_range(1..5)
    assert_equal 0, NumberUtils.sum_range(0..0)
    assert_equal 55, NumberUtils.sum_range(1..10)
  end
end
