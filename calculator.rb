class Calculator
  def add(numbers)
    raise ArgumentError, 'Input must be a string' unless numbers.is_a?(String)
  end
end