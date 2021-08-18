class Calculator
  def add(num1, num2)
    p num1 + num2
  end

  def subtract(num1, num2)
    p num1 - num2
  end

  def multiply(num1, num2)
    p num1 * num2
  end

  def divide(num1, num2)
    p num1 / num2
  end
end

calculator = Calculator.new
calculator.add(10, 5) # 15
calculator.subtract(10, 5) # 5
calculator.multiply(10, 5) # 50
calculator.divide(10, 5) # 2