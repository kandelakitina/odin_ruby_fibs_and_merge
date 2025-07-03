# frozen_string_literal: true

require 'pry-byebug'

# Adding fibonacci method to arrays
class Array
  def self.fibonacci(num)
    raise ArgumentError, 'num must be a positive integer' unless num.is_a?(Integer) && num.positive?

    return 0 if num == 1
    return 1 if num == 2

    fibonacci(num - 1) + fibonacci(num - 2)
  end

  def self.fibs(num)
    (1..num).map { |index| fibonacci(index) }
  end

  def merge_sort(arr = self)
    return arr if arr.length <= 1

    left, right = split_array(arr)
    merge_sort(left)
    merge_sort(right)
  end

  # private

  def split_array(arr = self)
    return [arr, []] if arr.length <= 1

    mid = (arr.length / 2.0).ceil
    [arr[0...mid], arr[mid..]]
  end
end

binding.pry

array = [6, 3, 9, 11, 4, 55]
array.split_array

binding.pry
