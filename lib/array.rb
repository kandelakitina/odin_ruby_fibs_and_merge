# frozen_string_literal: true

require 'pry-byebug'

# Adding fibonacci method to arrays
class Array
  # Returns the nth Fibonacci number.
  def self.fibonacci(num)
    raise ArgumentError, 'num must be a positive integer' unless num.is_a?(Integer) && num.positive?

    return 0 if num == 1
    return 1 if num == 2

    fibonacci(num - 1) + fibonacci(num - 2)
  end

  # Returns an array of Fibonacci numbers up to the given number
  def self.fibs(num)
    (1..num).map { |index| fibonacci(index) }
  end

  # Merge sort array
  def merge_sort(arr = self)
    return arr if arr.length <= 1

    mid = (arr.length / 2.0).ceil
    left = arr[0...mid]
    right = arr[mid..]

    merge(merge_sort(left), merge_sort(right))
  end

  private

  # Merge for sorting
  def merge(left, right)
    result = []
    result << (left.first <= right.first ? left.shift : right.shift) until left.empty? || right.empty?
    result + left + right
  end
end

p [6, 3, 9, 11, 4, 55].merge_sort
