# frozen_string_literal: true

module NumberUtils
  class << self
    # 数値が偶数かどうかを判定する
    # @param number [Integer] 判定対象の数値
    # @return [Boolean] 偶数の場合はtrue、奇数の場合はfalse
    def even?(number)
      number % 2 == 0
    end

    # 数値が素数かどうかを判定する
    # @param number [Integer] 判定対象の数値
    # @return [Boolean] 素数の場合はtrue、それ以外の場合はfalse
    def prime?(number)
      return false if number <= 1
      return true if number == 2

      (2..Math.sqrt(number).to_i).none? { |i| number % i == 0 }
    end

    # 指定された範囲の数値の合計を計算する
    # @param range [Range] 計算対象の範囲
    # @return [Integer] 合計値
    def sum_range(range)
      range.sum
    end

    # 指定された範囲内の素数を配列として返す
    def find_primes(start, finish)
      (start..finish).select { |num| prime?(num) }
    end

    # 数値の各桁の和を計算する
    def sum_of_digits(number)
      number.to_s.chars.map(&:to_i).sum
    end
  end
end
