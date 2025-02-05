# frozen_string_literal: true

class MathUtils
  def self.square(number)
    number * number
  end

  def self.square_root(number)
    raise ArgumentError, '負の数の平方根は計算できません' if number.negative?

    Math.sqrt(number)
  end

  def self.factorial(number)
    raise ArgumentError, '負の数の階乗は計算できません' if number.negative?
    return 1 if number.zero?

    (1..number).reduce(:*)
  end

  def self.power(base, exponent)
    raise ArgumentError, '指数は0以上の整数である必要があります' if !exponent.is_a?(Integer) || exponent.negative?

    base**exponent
  end
end
