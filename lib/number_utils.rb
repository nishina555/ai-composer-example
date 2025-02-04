# frozen_string_literal: true

class NumberUtils
  # 数値が素数かどうかを判定する
  def self.prime?(number)
    return false if number <= 1
    return true if number == 2

    (2..Math.sqrt(number).to_i).each do |i|
      return false if (number % i).zero?
    end

    true
  end

  # 指定された範囲内の素数を配列として返す
  def self.find_primes(start, finish)
    (start..finish).select { |num| prime?(num) }
  end

  # 数値の各桁の和を計算する
  def self.sum_of_digits(number)
    number.to_s.chars.map(&:to_i).sum
  end
end
