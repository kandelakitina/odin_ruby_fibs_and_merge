# frozen_string_literal: true

# Adding fibbonaci method to arrays
class Array
  def self.fibonacci(num)
    raise ArgumentError, 'num must be a positive integer' unless num.is_a?(Integer) && num.positive?

    return 0 if num == 1
    return 1 if num == 2

    fibonacci(num - 1) + fibonacci(num - 2)
  end

  def self.fibs(num)
    arr = []
    (1..num).map do |index|
      arr << fibonacci(index)
    end
    arr
  end
end

p Array.fibonacci(4)
p Array.fibs(8)
