class Calculator
  def add(numbers)
    raise ArgumentError, 'Input must be a string' unless numbers.is_a?(String)
  
    return 0 if numbers.empty?

    delimiters = if numbers.start_with?('//')
        /,|\n|#{Regexp.escape(numbers[2])}/
      else
        /,|\n/
      end

    numbers.split(delimiters).map(&:to_i).sum
  end
end