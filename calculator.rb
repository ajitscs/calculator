class Calculator
  def add(numbers)
    raise ArgumentError, 'Input must be a string' unless numbers.is_a?(String)
  
    return 0 if numbers.blank?

    numbers.split(',').map(&:to_i).sum
  end
end