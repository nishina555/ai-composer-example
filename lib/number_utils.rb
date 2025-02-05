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
end
