class Calculator
  def add(numbers)
    raise ArgumentError, 'Input must be a string' unless numbers.is_a?(String)
  
    return 0 if numbers.empty?

    delimiters = if numbers.start_with?('//') && !numbers[2].nil?
        /,|\n|#{Regexp.escape(numbers[2])}/
      else
        /,|\n/
      end

    numbers_array = numbers.split(delimiters).map(&:to_i)

    negative_numbers = numbers_array.select { |n| n < 0 }
    
    raise StandardError, "Negative numbers not allowed #{negative_numbers.join(',')}" if negative_numbers.any?

    numbers_array.sum
  end
end