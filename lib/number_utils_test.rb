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

  def test_odd?
    assert NumberUtils.odd?(1)
    assert NumberUtils.odd?(3)
    refute NumberUtils.odd?(2)
    refute NumberUtils.odd?(4)
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

  def test_primes_in_range
    assert_equal [2, 3, 5, 7], NumberUtils.primes_in_range(1, 10)
    assert_equal [], NumberUtils.primes_in_range(1, 1)
    assert_equal [11, 13, 17, 19], NumberUtils.primes_in_range(11, 20)
  end

  def test_sum_range
    assert_equal 15, NumberUtils.sum_range(1..5)
    assert_equal 0, NumberUtils.sum_range(0..0)
    assert_equal 55, NumberUtils.sum_range(1..10)
  end

  def test_factorial
    assert_equal 1, NumberUtils.factorial(0)
    assert_equal 1, NumberUtils.factorial(1)
    assert_equal 2, NumberUtils.factorial(2)
    assert_equal 6, NumberUtils.factorial(3)
    assert_equal 24, NumberUtils.factorial(4)
    assert_equal 120, NumberUtils.factorial(5)
    assert_raises(ArgumentError) { NumberUtils.factorial(-1) }
  end

  def test_truncate
    assert_equal 3.0, NumberUtils.truncate(3.14159)
    assert_equal 3.14, NumberUtils.truncate(3.14159, 2)
    assert_equal 3.141, NumberUtils.truncate(3.14159, 3)
    assert_equal(-3.14, NumberUtils.truncate(-3.14159, 2))
    assert_equal 0.0, NumberUtils.truncate(0.999)
    assert_raises(ArgumentError) { NumberUtils.truncate(3.14, -1) }
    assert_raises(ArgumentError) { NumberUtils.truncate(3.14, 1.5) }
  end
end
