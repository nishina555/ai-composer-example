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
    raise ArgumentError, "ゼロによる除算はできません" if b.zero?
    a / b.to_f
  end
end

if __FILE__ == $PROGRAM_NAME
  calc = Calculator.new
  puts "10 + 5 = #{calc.add(10, 5)}"
  puts "10 - 5 = #{calc.subtract(10, 5)}"
  puts "10 * 5 = #{calc.multiply(10, 5)}"
  puts "10 / 5 = #{calc.divide(10, 5)}"
end
