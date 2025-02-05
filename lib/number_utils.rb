# frozen_string_literal: true

class NumberUtils
  # 数値が偶数かどうかを判定する
  def self.even?(number)
    number % 2 == 0
  end

  # 数値が奇数かどうかを判定する
  def self.odd?(number)
    !even?(number)
  end

  # 数値が素数かどうかを判定する
  def self.prime?(number)
    return false if number <= 1
    return true if number == 2

    (2..Math.sqrt(number).to_i).none? { |i| (number % i).zero? }
  end

  # 指定された範囲の素数を配列として返す
  def self.primes_in_range(start, finish)
    (start..finish).select { |n| prime?(n) }
  end

  # 指定された範囲の数値の合計を計算する
  # @param range [Range] 計算対象の範囲
  # @return [Integer] 合計値
  def self.sum_range(range)
    range.sum
  end

  # 数値の各桁の和を計算する
  def self.sum_of_digits(number)
    number.to_s.chars.map(&:to_i).sum
  end

  # 数値の階乗を計算する
  # @param number [Integer] 階乗を計算する数値
  # @return [Integer] 階乗の結果
  # @raise [ArgumentError] 負の数が指定された場合
  def self.factorial(number)
    raise ArgumentError, '負の数の階乗は計算できません' if number.negative?
    return 1 if number.zero?

    (1..number).reduce(:*)
  end

  # 数値を指定された小数点以下の桁数で切り捨てる
  # @param number [Numeric] 対象の数値
  # @param decimal_places [Integer] 小数点以下の桁数（0以上の整数）
  # @return [Float] 切り捨てられた数値
  # @raise [ArgumentError] 桁数が負の数の場合
  def self.truncate(number, decimal_places = 0)
    raise ArgumentError, '小数点以下の桁数は0以上の整数である必要があります' if !decimal_places.is_a?(Integer) || decimal_places.negative?

    factor = 10.0**decimal_places
    (number * factor).floor / factor
  end
end
