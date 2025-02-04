# 基本的な計算機能を提供するクラス
class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    raise ArgumentError, "0で割ることはできません" if b.zero?
    a.to_f / b
  end
end

# 使用例
if __FILE__ == $0
  calc = Calculator.new
  puts "10 + 5 = #{calc.add(10, 5)}"
  puts "10 - 5 = #{calc.subtract(10, 5)}"
  puts "10 * 5 = #{calc.multiply(10, 5)}"
  puts "10 / 5 = #{calc.divide(10, 5)}"
end
